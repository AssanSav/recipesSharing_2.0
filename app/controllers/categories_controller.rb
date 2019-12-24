class CategoriesController < ApplicationController
  before_action :find_category, only: [:show]

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
  
  private 

  def find_category 
    @category = Category.find_by_id(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end 
end
