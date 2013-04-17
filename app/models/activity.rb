class Activity < ActiveRecord::Base
  validates :distance, :presence => true
  validates :activity_date, :presence => true
  
  belongs_to :user
  belongs_to :event
end
