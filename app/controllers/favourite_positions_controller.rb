class FavouritePositionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @favourite_position = FavouritePosition.new
    # @sport = Sport.find(params[:sport_id])
    @position = Position.find(params[:position_id])
    @favourite_position.position = @position
    @favourite_position.user = current_user
    @sport = @position.sport
    authorize @favourite_position
    if @favourite_position.save
      # rubocop:disable Layout/LineLength
      redirect_to sport_position_path(@sport, @position), notice: "#{@position.positions_name} has successfully been added to your favourites"
      # rubocop:enable Layout/LineLength
    else
      redirect_to sport_position_path(@sport, @position), notice: "#{@position.positions_name} has already been added to your favourites"
    end
  end

  def destroy
    @favourite_position = FavouritePosition.find(params[:id])
    @position = @favourite_position.position
    @sport = @position.sport
    authorize @favourite_position
    @favourite_position.destroy
    # rubocop:disable Layout/LineLength
    redirect_to sport_position_path(@sport, @position), notice: "#{@position.positions_name} has sucessfully been removed from your favourites"
    # rubocop:enable Layout/LineLength
  end
end
