class SessionsController < ApplicationController

  # ログイン
  def callback
    @auth = request.env["omniauth.auth"]
    @user = User.find_for_oauth(@auth) || User.create_with_oauth(@auth)

    redirect_to :root, notice: "login"
  end

end
