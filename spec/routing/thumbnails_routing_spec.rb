require "rails_helper"

RSpec.describe ThumbnailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/thumbnails").to route_to("thumbnails#index")
    end

    it "routes to #new" do
      expect(:get => "/thumbnails/new").to route_to("thumbnails#new")
    end

    it "routes to #show" do
      expect(:get => "/thumbnails/1").to route_to("thumbnails#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/thumbnails/1/edit").to route_to("thumbnails#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/thumbnails").to route_to("thumbnails#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/thumbnails/1").to route_to("thumbnails#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/thumbnails/1").to route_to("thumbnails#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/thumbnails/1").to route_to("thumbnails#destroy", :id => "1")
    end

  end
end
