class UsersController < ApplicationController
  def show
    @athlete = Athlete.new
    @user = current_user
    @favourites = Favourite.where(user: @user)
    @favourite_positions = FavouritePosition.where(user: @user)
    authorize @user
  end
end
