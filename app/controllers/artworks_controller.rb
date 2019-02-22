class ArtworksController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    if params[:query].present?
      @artworks_for_list = Artwork.search_by_name(params[:query])
    else
      @artworks_for_list = Artwork.all
    end

    @artworks_for_markers = Artwork.where.not(latitude: nil, longitude: nil)
    @markers = @artworks_for_markers.map do |artwork|
      {
        lng: artwork.longitude,
        lat: artwork.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { artwork: artwork }),
        # image_url: helpers.asset_url('paint_brush.png')
      }
    end
  end

  def show
    @booking = Booking.new
    @artwork = Artwork.find(params[:id])
    @review = Review.new
    authorize @artwork
  end

  def new
    @user = current_user
    @artwork = Artwork.new
    authorize @artwork
  end

  def create
    @artwork = Artwork.new(artwork_params)
    authorize @artwork
    @artwork.user = current_user
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @artwork = Artwork.find(params[:id])
    authorize @artwork
  end

  def update
    @artwork = Artwork.find(params[:id])
    authorize @artwork
    @artwork.user = current_user
    @artwork.update(artwork_params)
    redirect_to artwork_path(@artwork)
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    authorize @artwork
    @artwork.destroy
    redirect_to artworks_path
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :category, :photo, :availability, :start_date, :end_date, :address, :price)
  end
end
