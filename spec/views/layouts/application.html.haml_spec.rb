require 'spec_helper'

describe "layouts/application" do

  it "ブラウザのタイトルが表示されること" do
    render
    assert_select("title", "ヵェの部屋♪")
  end

  it "サイト名が表示されること" do
    render
    assert_select("a.brand", "ヵェの部屋♪")
  end

  it "メインメニューにTOPが表示されること" do
    render
    assert_select("ul.nav > li > a", "TOP")
  end

  it "メインメニューにBLOGが表示されること" do
    render
    assert_select("ul.nav > li > a", "BLOG")
  end
end
