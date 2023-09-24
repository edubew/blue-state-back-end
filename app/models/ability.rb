# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for admins
    if user.admins?
      can :manage, :UserActivity
    end

    # Define abilities for regular users
    if user.user?
      can :read, :all    # Users can read all resources
    end
  end
end
