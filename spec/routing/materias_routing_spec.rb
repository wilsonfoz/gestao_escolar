require "spec_helper"

describe MateriasController do
  describe "routing" do

    it "routes to #index" do
      get("/materias").should route_to("materias#index")
    end

    it "routes to #new" do
      get("/materias/new").should route_to("materias#new")
    end

    it "routes to #show" do
      get("/materias/1").should route_to("materias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/materias/1/edit").should route_to("materias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/materias").should route_to("materias#create")
    end

    it "routes to #update" do
      put("/materias/1").should route_to("materias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/materias/1").should route_to("materias#destroy", :id => "1")
    end

  end
end
