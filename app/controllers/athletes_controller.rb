class AthletesController < ApplicationController
  def new
    @athlete = Athlete.new
    authorize @athlete
  end

  def create
    @athlete = Athlete.new(athlete_params)
    # @athlete.details
    @athlete.save
      # session[:modal] = true
    authorize @athlete
    render "show"
  end

  def show
    @athlete = Athlete.find(params[:id])
    authorize @athlete
    redirect_to sports_path(:open => "true")
    # respond_to do |format|
    #   format.js
    # end
  end

  def find_or_create
    @athlete = Athlete.find_or_create_by(name: params[:name])
    puts params
    # puts @athlete.id
    authorize @athlete
    respond_to do |format|
      format.text { render partial: "athletes/ai_response", locals: {athlete: @athlete}, formats: [:html] }
    end
  end

  private

  def athlete_params
    params.require(:athlete).permit(:name, :details)
  end
end
