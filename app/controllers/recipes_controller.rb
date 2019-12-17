class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]
  
  def index
    @recipes = Recipe.all  
  end 

  def new 
    @recipes - Recipe.new 
  end 

  def create 
  end 

  def show 
  end 

  def edit 
  end 

  def update 
  end 

  def destroy 
  end 

  private 

  def find_recipe 
    @recipe = Recipe.find_by(params[:id])
  end 

  def recipe_params
    params.require(:recipe).permit(:name)
  end 

end
