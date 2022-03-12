class UsersController < ApplicationController

    def show
      user = User.find(params[:id])
      render json: user
    end

    def create 
        user = User.new(params[:user])
        if user.save!
          redirect_to user
        else         
        render user
        end
    end
end
