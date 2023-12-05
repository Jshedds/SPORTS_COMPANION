class FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new(favourite_params)
    @sport = Sport.find(params[:id])
    @favourite.sport = @sport
  end

  private

  def favourite_params
    params.require(:favourite).permit
  end
end
