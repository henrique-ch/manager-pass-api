class PasswordsController < ApplicationController
  before_action :set_user

  def index
    password =  Password.where(user_id: @current_user)
    render json: password, status: 200
  end

  def create
    password = Password.create!(params_password) 
    render json: password
  end

  private 

  def params_password
    params.require(:password).permit(:name, :master_key, :email, :user_id)
  end

  def set_user 
    @current_user = User.find(params[:id])
  end
end
