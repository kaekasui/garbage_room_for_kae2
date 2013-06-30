require 'spec_helper'

describe "home/index" do
  before do
    render
  end

  it "set the introduction" do 
    expect(rendered).to have_selector("div.introduction", I18n.t("home.introduction").gsub("\n", ""))
  end

  describe "side menu" do
    it "set the profile" do
      @sidebar = view.content_for(:sidebar)
      expect(@sidebar).to have_selector("h4.sidebar_title", :text => "プロフィール")
      expect(@sidebar).to have_selector("ul.nav > li > img[src='/images/kae.jpg']")
    end

    it "set the menu" do
      expect(view.content_for(:sidebar)).to have_selector("h4.sidebar_title", :text => "メニュー")
    end
 
  end
end
