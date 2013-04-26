class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.user?
      cannot :access, :rails_admin
      cannot :dashboard
    end

    can :manage, :all
  end
end
