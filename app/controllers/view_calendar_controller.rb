class ViewCalendarController < ApplicationController
  def index
    @user = User.find(:all, :select => "id, name")
  end
end
