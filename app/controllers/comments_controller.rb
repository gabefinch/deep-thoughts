class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @entry = Entry.find(params[:entry_id])
    render :new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.entry_id = params[:entry_id]
    if @comment.save
      flash[:notice] = "Comment successfully added."
      redirect_to entry_path(params[:entry_id])
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @entry = Entry.find(params[:entry_id])
    render :edit
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(comment_params)
    flash[:notice] = "Comment successfully updated."
    redirect_to entry_path(params[:entry_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment successfully deleted."
    redirect_to entry_path(params[:entry_id])
  end

# PRIVATE PRIVATE PRIVATE PRIVATE PRIVATE PRIVATE PRIVATE PRIVATE PRIVATE
private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
