class Activity < ActiveRecord::Base
  validates :distance, :activity_date, :event, :presence => true
  
  belongs_to :user
  belongs_to :event
end
