class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render :index
  end

  def new
    @entry = Entry.new
    @entries = Entry.all
    render :new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      flash[:notice] = "Entry successfully added."
      redirect_to entries_path()
    else
      render :new
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])
    @entries = Entry.all
    render :edit
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update_attributes(entry_params)
    flash[:notice] = "Entry successfully updated."
    redirect_to entries_path
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    flash[:notice] = "Entry successfully deleted."
    redirect_to entries_path
  end

# PRIVATE PRIVATE PRIVATE PRIVATE PRIVATE PRIVATE PRIVATE PRIVATE PRIVATE
private
  def entry_params
    params.require(:entry).permit(:title, :body)
  end

end
