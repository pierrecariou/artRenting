class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.all
    authorize @artwork
  end

  def show
    @artwork = Artwork.find(params[:id])
    authorize @artwork
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      redirect_to artworks_path
    else
      render :new
    end
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    @artwork.update(artwork_params)
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :category, :photo, :availibility)
  end

end
