class FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new
    @sport = Sport.find(params[:sport_id])
    @favourite.sport = @sport
    @favourite.user = current_user
    if @favourite.save
      redirect_to sport_path(@sport)
    else
      redirect_to sports_path
    end
  end

  private

  def favourite_params
    params.require(:favourite).permit
  end
end
