class HistoriesController < ApplicationController
  def create
    authorize @history
  end

  def update
    authorize @history
  end
end
