class Registration < ActiveRecord::Base
  validates :personal_goal, :user_id, :event_id, :presence => true
  
  belongs_to :user
  belongs_to :event
  belongs_to :team
end
