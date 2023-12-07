class SportsController < ApplicationController
  before_action :set_sport, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # @sports = Sport.all
    @sports = policy_scope(Sport)
  end

  def show
    # @sport = Sport.find(params[:id])
    @favourite = Favourite.new
    @sport = Sport.find(params[:id])
    authorize @sport
  end

  def new
    @sport = Sport.new
    authorize @sport
  end

  def create
    @sport = Sport.new(sport_params)
    authorize @sport
    if @sport.save
      redirect_to @sport
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @sport = Sport.find(params[:id])
    authorize @sport
  end

  def update
    # @sport = Sport.find(params[:id])
    authorize @sport
    if @sport.update(sport_params)
      redirect_to @sport, notice: "Sport was succesfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # @sport = Sport.find(params[:id])
    authorize @sport
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
