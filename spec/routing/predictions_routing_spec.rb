require "spec_helper"

describe PredictionsController do
  describe "routing" do

    it "routes to #index" do
      get("/predictions").should route_to("predictions#index")
    end

    it "routes to #new" do
      get("/predictions/new").should route_to("predictions#new")
    end

    it "routes to #show" do
      get("/predictions/1").should route_to("predictions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/predictions/1/edit").should route_to("predictions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/predictions").should route_to("predictions#create")
    end

    it "routes to #update" do
      put("/predictions/1").should route_to("predictions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/predictions/1").should route_to("predictions#destroy", :id => "1")
    end

  end
end
