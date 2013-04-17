class Event < ActiveRecord::Base
  validates :event_name, :presence => true
  validates :state_date, :presence => true
  validates :end_date, :presence => true
  validates :goal, :presence => true
  validates :details, :presence => true
  
  has_many :teams
  has_many :activities
  has_many :users, :through => :registrations
  belongs_to :agency
  belongs_to :sponsor
end
