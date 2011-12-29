require "spec_helper"

describe SearchConfigurationsController do
  describe "routing" do

    it "routes to #index" do
      get("/search_configurations").should route_to("search_configurations#index")
    end

    it "routes to #new" do
      get("/search_configurations/new").should route_to("search_configurations#new")
    end

    it "routes to #show" do
      get("/search_configurations/1").should route_to("search_configurations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/search_configurations/1/edit").should route_to("search_configurations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/search_configurations").should route_to("search_configurations#create")
    end

    it "routes to #update" do
      put("/search_configurations/1").should route_to("search_configurations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/search_configurations/1").should route_to("search_configurations#destroy", :id => "1")
    end

  end
end
