class CategoriesController < ApplicationController
  before_action :find_category, only: [:show, :edit, :update]

  def index
    @categories_recipes = Recipe.list_by_category 
  end

  def new 
    @category = Category.new 
  end 

  def create 
    @category = Category.new(category_params) 
    if @category.save 
      redirect_to category_path(@category)
    else
      render :new 
    end
  end 

  def show 
  end

  def edit 
  end 

  def update 
    if @category.update(category_params)
      redirect_to category_path(@category)
    else 
      render :edit 
    end
  end 
  
  private 

  def find_category 
    @category = Category.find_by_id(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end 
end
