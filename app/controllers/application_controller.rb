class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_icon_image

  def current_user
    current_twitter_user
  end

  # Twitterのユーザーを検索する
  def current_twitter_user
    search_user("twitter")
  end

  private

  def set_icon_image
    @icon_image = "icon_images/clover.gif"
  end

  # セッションからユーザー情報を検索する
  def search_user(provider)
    User.where(id: session["#{provider}"]).first
  end

  helper_method :current_twitter_user
end
