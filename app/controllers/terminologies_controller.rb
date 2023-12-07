class TerminologiesController < ApplicationController
  def create
    @terminology = terminology.new(terminology_params)
    @sport = Sport.find(params[:sport_id])
    authorize @terminology
    if @terminology.save
      redirect_to @sport
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    authorize @terminology
    if @terminology.update(terminology_params)
      redirect_to @terminology, notice: "Terminology was succesfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def terminology_params
    params.require(@terminology).permit(:most_important_terms)
  end
end
