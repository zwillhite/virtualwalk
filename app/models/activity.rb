class Activity < ActiveRecord::Base
  attr_accessible :distance, :activity_date, :event_id, :manual
  validates :distance, :activity_date, :event, :presence => true
  
  belongs_to :user
  belongs_to :event
end
