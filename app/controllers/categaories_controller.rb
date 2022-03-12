class CategaoriesController < ApplicationController
    def index, end

    def create
        category = Category.new(params[:id])

        if category.save!
            redirect_to category
        else         
          render category
        end    
    end

    def update
        category = Category.find(params[:id])
        category = Category.create!(category_params) 
    end


    private 

    def category_params
        category = Category.find(params[:id])
    end
end
