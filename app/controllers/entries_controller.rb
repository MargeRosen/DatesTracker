class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(params[:entry])
      if @entry.save
        flash[:notice] = "Entry has been created."
        redirect_to @entry
      else
        # nothing, yet
      end
    end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update_attributes(params[:entry])
    flash[:notice] = "Entry has been updated."
    redirect_to @entry
  end


end
