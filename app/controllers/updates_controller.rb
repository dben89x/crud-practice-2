class UpdatesController < ApplicationController

  def index
    @updates = Update.all
  end

  def new
    @update = Update.new
  end

  def edit
    @update = Update.find(params[:id])
  end

  def show
    @update = Update.find(params[:id])
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      redirect_to updates_path, notice: 'Update has been successfully created'
    else
      render :new
    end
  end

  def update
    @update = Update.find(params[:id])
    if @update.update(update_params)
      redirect_to update_path, notice: 'Update has been successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @update = Update.find(params[:id])
    @update.destroy
    redirect_to updates_path , notice: 'Update has been successfully destroyed'
  end

  def update_params
    params.require(:update).permit(:status, :user, :likes)
  end

end
