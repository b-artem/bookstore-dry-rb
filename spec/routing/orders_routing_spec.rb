# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Orders::OrdersController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/orders').to route_to('orders/orders#index')
    end

    it 'routes to #show' do
      expect(get: '/orders/1').to route_to('orders/orders#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/orders').to route_to('orders/orders#create')
    end
  end
end
