class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def dashboard
    skip_authorization
    @user = current_user
    @user.artworks.each do |artwork|
      artwork.bookings.each do |booking|
        @booking = booking
      end
    end
  end
end
