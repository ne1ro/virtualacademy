class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find params[:id]
  end

  def create
    @review = Review.create review_params
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
  end

private
  def review_params
    params.require(:review).permit :text, :rate
  end
end
