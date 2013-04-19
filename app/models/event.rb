class Event < ActiveRecord::Base
  attr_accessible :event_name, :start_date, :end_date, :goal, :logo, :details, :agency_id, :sponsor_id
  validates :event_name, :start_date, :end_date, :goal, :details, :agency, :sponsor, :presence => true
  
  has_many :teams
  has_many :activities
  has_many :users, :through => :registrations
  belongs_to :agency
  belongs_to :sponsor
end
