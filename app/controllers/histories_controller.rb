class HistoriesController < ApplicationController
  def create
    @history = history.new(history_params)
    authorize @history
    if @history.save
      redirect_to @sport
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    authorize @history
    if @history.update(history_params)
      redirect_to @history, notice: "History was succesfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def history_params
    params.require(@history).permit(:invented, :creator, :country_of_origin, :most_successful_teams, :milestones)
  end
end
