class ReviewsController < ApplicationController
  before_action :set_castle, only: [:new, :create]
  before_action :set_review, only: [:edit, :update, :destroy]

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.castle = @castle
    @review.user = current_user
    if @review.save
      redirect_to castle_path(@castle)
    else
      render :new
    end
    authorize @review
  end

  def update
    @review.update(review_params)
    redirect_to castle_path(@review.castle)
    authorize @review
  end

  def destroy
    @review.destroy
    redirect_to castle_path(@review.castle)
    authorize @review
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_castle
    @castle = Castle.find(params[:castle_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating, :castle, :user)
  end
end
