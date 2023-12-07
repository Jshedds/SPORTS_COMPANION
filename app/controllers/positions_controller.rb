class PositionsController < ApplicationController
  def index
    @positions = policy_scope(Position)
    @sport = Sport.find(params[:sport_id])
    @positions = Position.all
  end

  def show
    authorize @position
  end

  def create
    authorize @position
  end

  def update
    authorize @position
  end
end
