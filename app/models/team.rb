class Team < ActiveRecord::Base
  validates :team_name, :presence => true
  validates :team_details, :presence => true
  validates :team_goal, :presence => true
  
  
  belongs_to :event
  has_many :users
end
