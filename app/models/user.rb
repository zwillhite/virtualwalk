class User < ActiveRecord::Base
  
  has_many :events, :through => :registrations
  has_and_belongs_to_many :roles
  belongs_to :team
  has_many :activities
end
