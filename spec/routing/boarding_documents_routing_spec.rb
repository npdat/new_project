require "rails_helper"

RSpec.describe BoardingDocumentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/boarding_documents").to route_to("boarding_documents#index")
    end

    it "routes to #new" do
      expect(:get => "/boarding_documents/new").to route_to("boarding_documents#new")
    end

    it "routes to #show" do
      expect(:get => "/boarding_documents/1").to route_to("boarding_documents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/boarding_documents/1/edit").to route_to("boarding_documents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/boarding_documents").to route_to("boarding_documents#create")
    end

    it "routes to #update" do
      expect(:put => "/boarding_documents/1").to route_to("boarding_documents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/boarding_documents/1").to route_to("boarding_documents#destroy", :id => "1")
    end

  end
end
