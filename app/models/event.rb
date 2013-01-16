class Event < ActiveRecord::Base
  has_event_calendar
  attr_protected :user_id

  belongs_to :user
end
