class SportsController < ApplicationController
  before_action :set_sport, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @sports = Sport.all
  end

  def show
    # @sport = Sport.find(params[:id])
  end

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(sport_params)
    # might need to call admin/user here
    if @sport.save
      redirect_to @sport
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @sport = Sport.find(params[:id])

    # might need to call admin/user here
  end

  def update
    # @sport = Sport.find(params[:id])

    # might need to call admin/user here
    if @sport.update(sport_params)
      redirect_to @sport, notice: "Sport was succesfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # @sport = Sport.find(params[:id])

    # might need to call admin/user here
    @sport.destroy!
    redirect_to sports_path, notice: "Sport was succesfully deleted", status: :see_other
  end

  private

  def set_sport
    @sport = Sport.find(params[:id])
  end

  def sport_params
    params.require(@sport).permit(:name)
  end
end
