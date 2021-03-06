class ReviewsController < ApplicationController
  def create
    @artwork = Artwork.find(params[:artwork_id])
    @review = Review.new(review_params)
    authorize @review
    @review.artwork = @artwork
    if @review.save
      respond_to do |format|
        format.html { redirect_to artwork_path(@artwork) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'artworks/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
