class PositionsController < ApplicationController
  def index
    @sport = Sport.find(params[:id])
    @positions = Position.all
  end

  def show
  end

  def create
    authorize @position
  end

  def update
    authorize @position
  end
end
