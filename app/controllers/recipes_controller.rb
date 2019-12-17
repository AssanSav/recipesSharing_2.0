class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all  
  end 

  def new 
    @recipe = Recipe.new 
  end 

  def create 
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:message] = "Recipe Successfully Created"  
      redirect_to recipe_path(@recipe) 
    else 
      render :new 
    end 
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
    #binding.pry
    @recipe = Recipe.find_by(params[:id])
  end 

  def recipe_params
    params.require(:recipe).permit(:name)
  end 

end
