#coding:utf-8
class SessionsController < ApplicationController
  def callback
    auth = request.env["omniauth.auth"]

    user = User.find_by_provider_and_uid(auth["provider"],auth["uid"])

    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "ログインしました"
    else
      user = User.create_with_omniauth(auth)
#TODO db:resetとかやるとsession残ってて見つかりませんだらけになる 
      session[:user_id] = user.id
#      session[:user_id] = nil
      redirect_to register_path, :notice =>  "#{auth["info"]["name"]}さんの#{auth["provider"]}アカウントと接続しました"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "ログアウトしました"
  end
end
