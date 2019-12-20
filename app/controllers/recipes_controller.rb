class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.list_by_category  
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
    if @recipe.update(recipe_params) 
      flash[:message] = "Recipe Successfully Updated" 
      redirect_to recipe_path(@recipe)
    else 
      render :edit 
    end 
  end 
  
  def destroy  
    if @recipe
      @recipe.destroy
      redirect_to root_path, flash[:message] "Successfully deleted recipe"
    end
  end 
  
  private 
  
  def find_recipe 
    @recipe = Recipe.find(params[:id])
  end 
  
  def recipe_params
    params.require(:recipe).permit(:name, :category_id)
  end 

end
