class OverviewsController < ApplicationController
  def create
    @overview = overview.new(overview_params)
    authorize @overview
    if @overview.save
      redirect_to @sport
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    authorize @overview
    if @overview.update(overview_params)
      redirect_to @overview, notice: "Overview was succesfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def overview_params
    params.require(@overview).permit(:short_description, :game_objective, :governing_body_url)
  end
end
