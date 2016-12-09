require "rails_helper"

RSpec.describe Product3sController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/product3s").to route_to("product3s#index")
    end

    it "routes to #new" do
      expect(:get => "/product3s/new").to route_to("product3s#new")
    end

    it "routes to #show" do
      expect(:get => "/product3s/1").to route_to("product3s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/product3s/1/edit").to route_to("product3s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/product3s").to route_to("product3s#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/product3s/1").to route_to("product3s#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/product3s/1").to route_to("product3s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/product3s/1").to route_to("product3s#destroy", :id => "1")
    end

  end
end
