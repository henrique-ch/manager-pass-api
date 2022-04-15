class UsersController < ApplicationController
  
  def create 
    user = User.new(params_user)
    render json: user if user.save!
  end

  private 

  def params_user
    params.require(:user).permit(:name, :email, :master_password)
  end
end
