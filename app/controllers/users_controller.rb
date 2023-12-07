class UsersController < ApplicationController
  def show
    @user = current_user
    @favourites = Favourite.where(user: @user)
    authorize @user
  end
end
