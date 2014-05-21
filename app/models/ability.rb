class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.roles.first.nil?
      cannot :all, Grave
    elsif user.roles.first.access_level == 1
      can :create, Grave
      can :read, Grave
      can :update, Grave, :user_id == user.id
    elsif user.roles.first.access_level == 2
      can :manage, :all
    end
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
  end

end