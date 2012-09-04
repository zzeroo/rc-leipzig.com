class Ability
  include CanCan::Ability

  def initialize(user)
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, [Event]
    end
  end
end
