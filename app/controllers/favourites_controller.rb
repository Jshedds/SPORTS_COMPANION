class FavouritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @favourite = Favourite.new
    @sport = Sport.find(params[:sport_id])
    @favourite.sport = @sport
    @favourite.user = current_user
    authorize @favourite
    if @favourite.save
      redirect_to sport_path(@sport), notice: "#{@sport.name} has successfully been added to your favourites"
    else
      redirect_to sports_path
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    authorize @favourite
    @favourite.destroy
    # redirect_to sport_path(@sport), notice: "#{@sport.name} has successfully been removed from your favourites"
  end
end
