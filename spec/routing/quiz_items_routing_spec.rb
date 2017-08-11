require "rails_helper"

RSpec.describe QuizItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quiz_items").to route_to("quiz_items#index")
    end


    it "routes to #show" do
      expect(:get => "/quiz_items/1").to route_to("quiz_items#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/quiz_items").to route_to("quiz_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quiz_items/1").to route_to("quiz_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quiz_items/1").to route_to("quiz_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quiz_items/1").to route_to("quiz_items#destroy", :id => "1")
    end

  end
end
