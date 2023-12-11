class AthletesController < ApplicationController
  def new
    @athlete = Athlete.new
    authorize @athlete
  end

  def create
    @athlete = Athlete.new(athlete_params)
    @athlete.save
    authorize @athlete
  end

  def show
    @athlete = Athlete.find(params[:id])
    authorize @athlete
  end

  private

  def athlete_params
    params.require(:athlete).permit(:name, :details)
  end
end
