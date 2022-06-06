class CastlesController < ApplicationController
  before_action :set_castle, only: [:show, :edit, :update, :destroy]
  def index
    @castles = policy_scope(Castle).order(created_at: :desc)
  end

  def new
    @castle = Castle.new
    authorize @castle
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.user = current_user
    if @castle.save
      redirect_to castle_path(@castle)
    else
      render :new
    end
    authorize @castle
  end

  def edit
    authorize @castle
  end

  def update
    @castle.update(castle_params)
    redirect_to castle_path
    authorize @castle
  end

  def show
    authorize @castle
  end

  def destroy
    @castle.destroy
    redirect_to castles_path
    authorize @castle
  end

  private

  def castle_params
    params.require(:castle).permit(:name, :description, :photo, :address, :price)
  end

  def set_castle
    @castle = Castle.find(params[:id])
  end
end
