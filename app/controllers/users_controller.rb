class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def dashboard
    skip_authorization
    @user = current_user
  end
end
