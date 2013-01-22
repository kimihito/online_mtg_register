class MypageController < ApplicationController
  def index
    @event = Event.new
  end
end
