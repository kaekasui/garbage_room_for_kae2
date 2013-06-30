class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_icon_image

  private

  def set_icon_image
    @icon_image = "icon_images/clover.gif"
  end
end
