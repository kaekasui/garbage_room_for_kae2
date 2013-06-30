require "spec_helper"

describe BlogsController do
  describe "routing" do

    it "routes to #index" do
      pending "some reason"
      get("/blogs").should route_to("blogs#index")
    end

    it "routes to #new" do
      pending "some reason"
      get("/blogs/new").should route_to("blogs#new")
    end

    it "routes to #show" do
      pending "some reason"
      get("/blogs/1").should route_to("blogs#show", :id => "1")
    end

    it "routes to #edit" do
      pending "some reason"
      get("/blogs/1/edit").should route_to("blogs#edit", :id => "1")
    end

    it "routes to #create" do
      pending "some reason"
      post("/blogs").should route_to("blogs#create")
    end

    it "routes to #update" do
      pending "some reason"
      put("/blogs/1").should route_to("blogs#update", :id => "1")
    end

    it "routes to #destroy" do
      pending "some reason"
      delete("/blogs/1").should route_to("blogs#destroy", :id => "1")
    end

  end
end
