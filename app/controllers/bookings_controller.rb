class BookingsController < ApplicationController
  def new
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.artwork = Artwork.find(params[:artwork_id])
    @booking.user = current_user
    if @booking.save
      redirect_to artwork_path(@booking.artwork)
    else
      render "artworks/show"
    end
  end

  def accept
    skip_authorization
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to users_dashboard_path
  end

  def decline
    skip_authorization
    @booking = Booking.find(params[:id])
    @booking.status = "refused"
    @booking.save
    redirect_to users_dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :date_start, :date_finish)
  end
end
