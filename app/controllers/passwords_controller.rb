class PasswordsController < ApplicationController


  def index
    password =  Password.all
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
end
