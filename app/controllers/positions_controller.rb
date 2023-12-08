class PositionsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @sport = Sport.find(params[:sport_id])
    @positions = Position.all
    @positions = policy_scope(Position)
  end

  def show
    @sport = Sport.find(params[:sport_id])
    @position = Position.find(params[:id])
    authorize @position
  end

  def create
    authorize @position
  end

  def update
    authorize @position
  end
end
