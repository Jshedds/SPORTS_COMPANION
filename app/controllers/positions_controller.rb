class PositionsController < ApplicationController
  def index
    @sport = Sport.find(params[:id])
    @positions = Position.all
  end

  def show

  end

  def create

  end

  def update

  end
end
