require "rails_helper"

RSpec.describe Orders::OrdersController, type: :routing do
  describe "routing" do
    # before

    it "routes to #index" do
      expect(:get => "/orders").to route_to("orders/orders#index")
    end

    it "routes to #show" do
      expect(:get => "/orders/1").to route_to("orders/orders#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/orders").to route_to("orders/orders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/orders/1").to route_to("orders/orders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/orders/1").to route_to("orders/orders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/orders/1").to route_to("orders/orders#destroy", :id => "1")
    end

  end
end