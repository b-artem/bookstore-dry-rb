class SettingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :update]
  before_action :set_addresses, only: :edit

  def edit
  end

  def update
    if params[:billing_address]
      address = Forms::BillingAddressForm.from_params(params[:billing_address])
    elsif params[:shipping_address]
      address = Forms::ShippingAddressForm.from_params(params[:shipping_address])
                .with_context(use_billing_address_as_shipping: false)
    end
    if address.valid?
      addr = Address.find_or_create_by(user_id: @user.id, type: address.type)
      addr.update_attributes(address.attributes)
      redirect_to settings_edit_path, notice: 'Address was successfully updated'
    else
      redirect_to settings_edit_path(settings_params),
                  alert: "Address wasn't updated"
    end
  end

  private

    def set_user
      @user = current_user
    end

    def settings_params
      params.permit(billing_address: [:first_name, :last_name, :address, :city,
                                      :zip, :country, :phone],
                    shipping_address: [:first_name, :last_name, :address, :city,
                                      :zip, :country, :phone])
    end

    def set_addresses
      if params[:billing_address]
        @billing_address = Forms::BillingAddressForm.from_params(params[:billing_address])
        @billing_address.valid?
      else
        @billing_address = Forms::BillingAddressForm.from_model(@user.billing_address)
      end

      if params[:shipping_address]
        @shipping_address = Forms::ShippingAddressForm.from_params(params[:shipping_address])
                            .with_context(use_billing_address_as_shipping: false)
        @shipping_address.valid?
      else
        @shipping_address = Forms::ShippingAddressForm.from_model(@user.shipping_address)
      end
    end
end
