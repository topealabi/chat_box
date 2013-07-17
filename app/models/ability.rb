class Ability
  include CanCan::Ability
  

  def initialize(user)
    user ||= User.new
    if user.admin?
        can :manage, :all 
    else
        can [:index, :edit, :update, :destroy, :show, :following, :followers], [User]

    end
      
  end
end
