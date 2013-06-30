require 'spec_helper'

describe "layouts/application" do

  it "set the main title" do
    render
    assert_select("a.brand", "ヵェの部屋♪")
  end

  it "set the menu" do
    render
    assert_select("ul.nav > li > a", "TOP")
    assert_select("ul.nav > li > a", "BLOG")
  end

end
