class PasswordsController < ApplicationController
    def index
        pass =  Password.all

        render json: pass
    end
end
