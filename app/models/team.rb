class Team < ActiveRecord::Base
  validates :team_name, :team_details, :team_goal, :event, :presence => true 
  
  belongs_to :event
  has_many :users, :through => :event
end
