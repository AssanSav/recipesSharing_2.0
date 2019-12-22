class CommentsController < ApplicationController
  before_action :find_comment, only: [:edit, :update, :destroy]

  def new 
    @comment = Comment.new 
  end 
  
  def create 
    @recipe = Recipe.find_by(params[:recipe_id]) 
    if @recipe
      @comment = current_user.comments.build(comment_params)
      @comment.recipe_id = @recipe.id
      @comment.save 
      redirect_to recipe_path(@recipe), notice: "Comment Successfully Created"
    else 
      render :new 
    end 
  end

  def edit
  end 
  
  def update    
    if @comment
      @comment.update(comment_params)
      redirect_to recipe_path(@recipe), notice: "Comment Successfully updated"
    else 
      render :edit 
    end
  end 

  def destroy
    @comment.destroy
    redirect_to recipe_path(@recipe), notice: "Comment Successfully Deleted"
  end 
  
  private 

  def find_comment 
    @recipe = Recipe.find_by(params[:recipe_id])
    @comment = Comment.find_by_id(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end 
end
