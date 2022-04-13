class PasswordsController < ApplicationController
  def index
    password =  Password.all
    render json: password, status: 200
  end
end
