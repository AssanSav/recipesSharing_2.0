class CommentsController < ApplicationController
  before_action :find_comment, only: [:edit, :update, :destroy]
  def new 
    @comment = Comment.new 
  end 
  
  def create 
    @recipe = Recipe.find_by(params[:recipe_id]) 
    if @recipe
      @comment = Comment.new(comment_params)
      @comment.recipe_id = @recipe.id
      @comment.save 
      redirect_to recipe_path(@recipe)
    else 
      render :new 
    end 
  end

  def edit 
    @comment = Comment.find_by(params[:id])
  end 
  
  def update 
    if @comment.update(comment_params)
      redirect_to recipe_path(@recipe)
    end
  end 

  def destroy
    @comment.destroy
    redirect_to recipe_path(@recipe)
  end 
  
  private 

  def find_comment 
    @recipe = Recipe.find_by(params[:recipe_id]) 
    @comment = Comment.find_by(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end 
end
