class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @recipes = Recipe.list_by_category  
  end 

  def new 
    @recipe = Recipe.new 
  end 

  def create 
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe), notice: "Recipe Successfully Created" 
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
      redirect_to recipe_path(@recipe), notice: "Recipe Successfully Updated" 
    else 
      render :edit 
    end 
  end 
  
  def destroy  
    if @recipe.destroy
      redirect_to recipes_path, notice: "Successfully deleted recipe"
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
