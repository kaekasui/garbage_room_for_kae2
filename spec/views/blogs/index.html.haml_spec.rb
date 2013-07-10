require 'spec_helper'

describe "blogs/index" do
  #fixtures :blogs

  describe "右側のメニュー" do
    it "「プロフィール」が表示されること" do
      expect(view.content_for(:sidebar)).to have_selector("h4.sidebar_title", :text => "プロフィール")
    end

    it "「最近の記事」が表示されること" do
      expect(view.content_for(:sidebar)).to have_selector("h4.sidebar_title", :text => "最近の投稿")
    end

    it "「最近のコメント」が表示されること" do
      expect(view.content_for(:sidebar)).to have_selector("h4.sidebar_title", :text => "最近のコメント")
    end
  end

  context "ブログが2件の場合" do
    it "ブログの記事を2件表示する" do
      pending "until"
      @blog = blogs(:normal)
      expect(:blogs).to have_selector("th", :text => "Title", :count => 2)
    end
  end

  context "ブログが12件の場合" do
    it "ブログの記事を10件表示する" do
      pending "until"
    end
  end

end
