# frozen_string_literal: true

require 'rails_helper'
require 'support/devise'
require 'support/factory_girl'

RSpec.shared_examples 'redirects to login page' do
  it 'redirects to login page' do
    expect(response).to redirect_to(new_user_session_path)
  end
end

RSpec.shared_examples 'returns code 200' do
  it 'returns http status code 200' do
    expect(response).to have_http_status 200
  end
end

RSpec.describe Orders::OrdersController, type: :controller do
  let(:user) { create :user }
  let(:order) { create :order, user: user }
  let(:valid_attributes) { {} }
  let(:invalid_attributes) { { user: nil } }
  let(:valid_session) { {} }

  describe 'GET #index' do
    context 'when user is a guest' do
      before { get :index, params: {}, session: valid_session }

      include_examples 'redirects to login page'
    end

    context 'when user is signed in' do
      before do
        sign_in user
        get :index, params: {}, session: valid_session
      end

      include_examples 'returns code 200'
    end
  end

  describe 'GET #show' do
    context 'when user is a guest' do
      before { get :show, params: { id: order.id }, session: valid_session }

      include_examples 'redirects to login page'
    end

    context 'when user is signed in' do
      before do
        sign_in user
        get :show, params: { id: order.id }, session: valid_session
      end

      include_examples 'returns code 200'
    end
  end

  describe 'POST #create' do
    let!(:cart) { create(:cart, line_items: [create(:line_item)]) }
    let(:valid_session) { { cart_id: cart.id } }

    context 'when user is a guest' do
      before do
        post :create, params: { order: valid_attributes },
                      session: valid_session
      end

      include_examples 'redirects to login page'
    end

    context 'when user is signed in' do
      before { sign_in user }

      context 'when cart is NOT empty' do
        it 'creates a new Order' do
          expect do
            post :create, params: { order: valid_attributes },
                          session: valid_session
          end.to change(Order, :count).by(1)
        end

        it 'redirects to Checkout' do
          post :create, params: { order: valid_attributes }, session: valid_session
          expect(response).to redirect_to(order_checkout_index_path(Order.last))
        end

        include_examples 'returns code 200'
      end

      context 'when cart is empty' do
        before { cart.line_items.each(&:destroy) }

        it 'redirects to Books path' do
          post :create, params: { order: valid_attributes }, session: valid_session
          expect(response).to redirect_to(books_url)
        end
      end
    end
  end
end
