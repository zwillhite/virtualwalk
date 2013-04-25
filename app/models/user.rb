class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :username, :password, :password_confirmation, :single_access_token, :role_ids
  validates :first_name, :last_name, :email, :username, :presence => true
  validates :password, :password_confirmation, :presence => true, :if => :password_changed?

  acts_as_authentic
  
  has_many :events, :through => :registrations
  has_and_belongs_to_many :roles
  has_many :teams, :through => :registrations
  has_many :registrations
  has_many :activities
  
  after_create :default_role
    
  def default_role
    self.roles << Role.where(:name => 'Participant').first
  end
  
  def has_role?(role_sym)
    roles.any? {|r| r.name.underscore.to_sym == role_sym}
  end
end
