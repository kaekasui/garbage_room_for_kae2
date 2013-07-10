require "spec_helper"

describe "BLOG" do
  describe "routing" do

    it "ブログの一覧画面が表示されること" do
      expect(get("/blogs")).to route_to("blogs#index")
    end

    it "ブログの続き画面が表示されること" do
      expect(get("/blogs/1")).to route_to("blogs#show", :id => "1")
    end

    it "ブログの新規作成画面は表示されないこと" do
      expect(get("/blogs/new")).not_to route_to("blogs#new")
    end

    it "ブログの編集画面は表示されないこと" do
      expect(get("/blogs/1/edit")).not_to route_to("blogs#edit", :id => "1")
    end

    it "ブログの新規作成はできないこと" do
      expect(post("/blogs")).not_to route_to("blogs#create")
    end

    it "ブログの編集はできないこと" do
      expect(put("/blogs/1")).not_to route_to("blogs#update", :id => "1")
    end

    it "ブログの削除はできないこと" do
      expect(delete("/blogs/1")).not_to route_to("blogs#destroy", :id => "1")
    end

  end
end
