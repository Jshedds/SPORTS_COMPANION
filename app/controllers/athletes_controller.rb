class AthletesController < ApplicationController
  def new
    authorize @athlete
    @athlete = Athlete.new
  end

  def create
    authorize @athlete
    @athlete = Athlete.new(athlete_params)
    @athlete.save
  end

  def show
    authorize @athlete
    @athlete = Athlete.find(params[:id])
  end

  private

  def athlete_params
    params.require(:athlete).permit(:name, :details)
  end
end
