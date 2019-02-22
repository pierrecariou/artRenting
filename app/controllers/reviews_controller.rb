class ReviewsController < ApplicationController
  def create
    @artwork = Artwork.find(params[:artwork_id])
    @review = Review.new(review_params)
    @review.artwork = @artwork
    if @review.save
      redirect_to artwork_path(@artwork)
    else
      render 'artworks/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
