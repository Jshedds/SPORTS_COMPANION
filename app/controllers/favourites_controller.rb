class FavouritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @favourite = Favourite.new
    @sport = Sport.find(params[:sport_id])
    @favourite.sport = @sport
    @favourite.user = current_user
    authorize @favourite
    if @favourite.save
      redirect_to sport_path(@sport)
    else
      redirect_to sport_path(@sport)
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    sport = @favourite.sport
    # @favourite.user = current_user
    authorize @favourite
    @favourite.destroy
    redirect_to sport_path(sport)
  end
end
