class CategoryController < ApplicationController
    def index; end

    def create
        category = Category.create(params_categorie)
        render json: category
    end

    def update
        category = Category.find(params[:id])
        category = Category.create!(category_params) 
    end

    private 
    
    def params_categorie
        params.require(:category).permit(:name, :password_id)
    end
  end
