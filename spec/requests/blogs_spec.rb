require 'spec_helper'

describe "Blogs" do
  describe "GET /blogs" do
    it "works! (now write some real specs)" do
      pending "some reason"
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get blogs_path
      response.status.should be(200)
    end
  end
end
