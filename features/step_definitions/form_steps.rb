#!/bin/env ruby
# encoding: utf-8

もし(/^テキストエリア"(.*?)"に"(.*?)"を入力する$/) do |text_area, text|
  fill_in text_area, with: text
end

ならば(/^テキストエリア"(.*?)"が表示される$/) do |content|
  page.should have_selector(".sidebar-nav .control-label", text: content)
end

ならば(/^ボタン"(.*?)"が表示される$/) do |value|
  page.should have_selector(".sidebar-nav input.btn[value=#{value}]")
end

もし(/^ボタン"(.*?)"をクリックする$/) do |button|
  click_button button
end

ならば(/^メッセージ"(.*?)"が表示される$/) do |message|
  page.should have_selector(".sidebar-nav div.alert", text: message)
end
