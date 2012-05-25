require "spec_helper"

describe ProfessoresController do
  describe "routing" do

    it "routes to #index" do
      get("/professores").should route_to("professores#index")
    end

    it "routes to #new" do
      get("/professores/new").should route_to("professores#new")
    end

    it "routes to #show" do
      get("/professores/1").should route_to("professores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/professores/1/edit").should route_to("professores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/professores").should route_to("professores#create")
    end

    it "routes to #update" do
      put("/professores/1").should route_to("professores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/professores/1").should route_to("professores#destroy", :id => "1")
    end

  end
end
