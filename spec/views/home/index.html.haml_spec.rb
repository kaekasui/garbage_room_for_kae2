require 'spec_helper'

describe "home/index" do

  it "紹介文が表示されること" do 
    render
    expect(rendered).to have_selector("div.introduction", I18n.t("home.introduction").gsub("\n", ""))
  end

  describe "右側のメニュー" do
    it "「プロフィール」が表示されること" do
      render
      expect(view.content_for(:sidebar)).to have_selector("h4.sidebar_title", :text => "プロフィール")
    end

    it "「メニュー」が表示されること" do
      render
      expect(view.content_for(:sidebar)).to have_selector("h4.sidebar_title", :text => "メニュー")
    end

  end
end
