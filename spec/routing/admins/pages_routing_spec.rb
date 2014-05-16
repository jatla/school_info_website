require "spec_helper"

describe Admins::PagesController do
  describe "routing" do

    it "routes to #index" do
      get("/admins/pages").should route_to("admins/pages#index")
    end

    it "routes to #new" do
      get("/admins/pages/new").should route_to("admins/pages#new")
    end

    it "routes to #show" do
      get("/admins/pages/1").should route_to("admins/pages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admins/pages/1/edit").should route_to("admins/pages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admins/pages").should route_to("admins/pages#create")
    end

    it "routes to #update" do
      put("/admins/pages/1").should route_to("admins/pages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admins/pages/1").should route_to("admins/pages#destroy", :id => "1")
    end

  end
end
