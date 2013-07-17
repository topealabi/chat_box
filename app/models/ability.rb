class Ability
  include CanCan::Ability
  

  def initialize(user)
    user ||=  User.new
    if user.admin?
        can :manage, :all 
    elsif user = @user
        can [:index, :edit, :update, :destroy, :show, :following, :followers], [User]
    else
    	can [:index, :show, :following, :followers], [User]

    end
      
  end
end
