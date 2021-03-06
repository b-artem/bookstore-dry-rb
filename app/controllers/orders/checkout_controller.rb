# frozen_string_literal: true

class Orders::CheckoutController < ApplicationController
  include Wicked::Wizard
  include CurrentOrder

  before_action :authenticate_user!
  authorize_resource(Order)
  authorize_resource(Address)
  steps :address, :delivery, :payment, :confirm, :complete

  def show
    @current_order = current_order
    case step
    when :address
      load_addresses
    when :delivery
      load_delivery
    when :payment, :confirm
      load_payment
    end
    render_wizard
  end

  def update
    @current_order = current_order
    case step
    when :address
      save_addresses
    when :delivery
      save_shipping_method
    when :payment
      process_payment
    when :confirm
      confirm_order
    end
  end

  private

  def load_addresses
    billing_model = current_order.billing_address || current_user.billing_address
    shipping_model = current_order.shipping_address || current_user.shipping_address
    @order = OrderForm.new(
      id: current_order.id,
      billing_address: AddressForm.new(billing_model&.attributes),
      shipping_address: AddressForm.new(shipping_model&.attributes)
    )
  end

  def load_delivery
    @order = current_order
    @order.shipping_method ||= ShippingMethod.order(:price).first
    @shipping_methods = ShippingMethod.order('price ASC')
  end

  def load_payment
    keys = PaymentForm.schema.keys.map(&:name)
    attrs = keys.each_with_object({}) { |key, hash| hash[key] = session[key] }
    @payment = PaymentForm.new(attrs)
  end

  def save_addresses
    use_billing = params[:order][:use_billing_address_as_shipping] == 'true'

    attrs = params[:order].to_unsafe_h
    attrs[:billing_address][:order_id] = current_order.id
    attrs[:shipping_address][:order_id] = current_order.id unless use_billing

    @order = OrderForm.new(attrs.merge(id: current_order.id, use_billing_address_as_shipping: use_billing))
    render_next_step @order
  end

  def save_shipping_method
    current_order.update(shipping_method_id: params[:order][:shipping_method_id])
    render_next_step current_order
  end

  def process_payment
    @payment = PaymentForm.new(params[:payment].to_unsafe_h)
    set_payment_data if @payment.valid?
    render_next_step @payment
  end

  def confirm_order
    current_order.pay if current_order.may_pay?
    clear_payment_data
    render_wizard current_order
  end

  def render_next_step(form)
    return render_wizard(form) unless form.valid?
    return render_wizard(form) unless params[:next_step] == 'confirm'

    form.save
    redirect_to wizard_path(:confirm)
  end

  def set_payment_data
    @payment.attributes.each { |key, value| session[key] = value }
  end

  def clear_payment_data
    PaymentForm.schema.keys.map(&:name).each { |key| session.delete(key) }
  end
end
