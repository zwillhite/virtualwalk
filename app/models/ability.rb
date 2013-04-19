class Ability
  include CanCan::Ability
  
  def initialize(thisuser)
    thisuser ||= User.new #guest account
    
    if thisuser.has_role? :manager
      can :manage, :all
    elsif thisuser.has_role? :participant
      can :manage, [ Home, Activity, Agency, Event, Registration, Sponsor, Team ]
      can :manage, thisuser
    else
      can :create, User
      can :read, Home
    end
  end
end