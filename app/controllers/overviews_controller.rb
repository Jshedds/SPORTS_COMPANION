class OverviewsController < ApplicationController
  def create
    authorize @overview
  end

  def update
    authorize @overview
  end
end
