#!/bin/env ruby
# encoding: utf-8

前提(/^ブログの記事が"(.*?)"件である場合$/) do |blogs_count|
  blogs_count.to_i.times do
    @blog = Blog.create(title: "Title", contents1: "Content1")  
  end
end

もし(/^ブログ一覧ページの"(.*?)"ページ目を表示する$/) do |page|
  visit blogs_path(page: page)
end

もし(/^"(.*?)"ページを表示する$/) do |page_name|
  visit path_to(page_name) 
end

ならば(/^紹介文が表示される$/) do
  page.should have_selector("div.introduction", I18n.t("home.introduction"))
end

ならば(/^ブログの記事が"(.*?)"件表示される$/) do |display_count|
  page.should have_selector(".table tr > th > a", count: display_count) 
end

ならば(/^ブログのタイトルが表示される$/) do
  page.should have_selector(".table tr > th > a", @blog.title)
end

ならば(/^ブログの投稿日付が表示される$/) do
  page.should have_selector(".table tr > th.post_at", @blog.created_at)
end

ならば(/^ブログのコンテンツ1が表示される$/) do
  page.should have_selector(".table tr > td.contents1", @blog.contents1)
end

ならば(/^ブログのコンテンツ2が表示される$/) do
  page.should have_selector(".table tr > td", @blog.contents2)
end

ならば(/^サイドメニューは"(.*?)"が表示される$/) do |menu|
  page.should have_selector(".sidebar-nav > h4", text: menu)
end

ならば(/^プロフィールに"(.*?)"が表示される$/) do |profile|
  page.should have_selector(".sidebar-nav > ul.nav-list > li", text: profile)
end

ならば(/^メニュー"(.*?)"が表示される$/) do |menu|
  page.should have_selector(".sidebar-nav > ul.nav-list > li", text: menu)
end