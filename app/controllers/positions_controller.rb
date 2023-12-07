class PositionsController < ApplicationController
  def create
    authorize @position
  end

  def update
    authorize @position
  end
end
