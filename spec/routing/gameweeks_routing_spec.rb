require "spec_helper"

describe GameweeksController do
  describe "routing" do

    it "routes to #index" do
      get("/gameweeks").should route_to("gameweeks#index")
    end

    it "routes to #new" do
      get("/gameweeks/new").should route_to("gameweeks#new")
    end

    it "routes to #show" do
      get("/gameweeks/1").should route_to("gameweeks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gameweeks/1/edit").should route_to("gameweeks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gameweeks").should route_to("gameweeks#create")
    end

    it "routes to #update" do
      put("/gameweeks/1").should route_to("gameweeks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gameweeks/1").should route_to("gameweeks#destroy", :id => "1")
    end

  end
end
