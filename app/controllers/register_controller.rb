#coding: utf-8
class RegisterController < ApplicationController
  def index
  end

  def record
    current_user.name=params[:name] if params[:name]!=""
    current_user.email=params[:email] if params[:email]!=""
    current_user.skype_id = params[:skype_id] if params[:skype_id] != ""
    redirect_to choice_path, :notice => "編集しました"
  end
end
