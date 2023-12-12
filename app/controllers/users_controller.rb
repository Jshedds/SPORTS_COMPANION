class UsersController < ApplicationController
  def show
    @athlete = Athlete.new
    @user = current_user
    @favourites = Favourite.where(user: @user)
    authorize @user
  end
end
