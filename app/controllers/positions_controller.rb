class PositionsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @athlete = Athlete.new
    @sport = Sport.find(params[:sport_id])
    @positions = Position.all
    @positions = policy_scope(Position)
  end

  def show
    @athlete = Athlete.new
    @sport = Sport.find(params[:sport_id])
    @position = Position.find(params[:id])
    @favourite_position = FavouritePosition.find_by(user: current_user, position: @position)
    @favourite_position ||= FavouritePosition.new
    authorize @position
  end

  def create
    authorize @position
  end

  def update
    authorize @position
  end
end
