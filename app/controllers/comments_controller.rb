class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @entry = Entry.find(params[:entry_id])
  end

  def create
    @comment = Comment.new(comment_params)
    entry = Entry.find(params[:entry_id])
    @comment.entry = entry
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
        format.html do
          redirect_to entry_path(entry)
          flash[:notice] = "Comment successfully added."
        end
        format.js
      end
    else
      @entry = Entry.find(params[:entry_id])
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
    if @comment.save
      flash[:notice] = "Comment successfully updated."
      redirect_to entry_path(params[:entry_id])
    else
      @comment = Comment.find(params[:id])
      @entry = Entry.find(params[:entry_id])
      render :edit
    end
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
