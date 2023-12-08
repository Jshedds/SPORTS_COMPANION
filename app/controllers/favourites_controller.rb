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
      redirect_to sport_path(@sport), notice: "#{@sport.name} has already been added to your favourites"
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    # @favourite.sport = @sport
    # @favourite.user = current_user
    authorize @favourite
    @favourite.destroy
    redirect_to sport_path(@favourite.sport), notice: "#{@favourite.sport.name} has successfully been removed from your favourites"
  end
end
