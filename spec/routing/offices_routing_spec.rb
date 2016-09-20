require "rails_helper"

RSpec.describe OfficesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/offices").to route_to("offices#index")
    end

    it "routes to #new" do
      expect(:get => "/offices/new").to route_to("offices#new")
    end

    it "routes to #show" do
      expect(:get => "/offices/1").to route_to("offices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/offices/1/edit").to route_to("offices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/offices").to route_to("offices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/offices/1").to route_to("offices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/offices/1").to route_to("offices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/offices/1").to route_to("offices#destroy", :id => "1")
    end

  end
end
