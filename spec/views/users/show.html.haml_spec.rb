require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :provider => "Provider",
      :uid => "Uid",
      :name => "Name",
      :screen_name => "Screen Name",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Provider/)
    rendered.should match(/Uid/)
    rendered.should match(/Name/)
    rendered.should match(/Screen Name/)
    rendered.should match(/Image/)
  end
end
