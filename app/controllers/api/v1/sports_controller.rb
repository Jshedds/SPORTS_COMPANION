class Api::V1::SportsController < Api::V1::BaseController
acts_as_token_authentication_handler_for User, except: [ :index, :show ]
before_action :set_sport, only: [:show, :update]

  def index
    @sports = policy_scope(Sport)
  end

  def show
  end

  def update
    @sport.update(sport_params)
    if @sport.update(sport_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_sport
    @sport = Sport.find(params[:id])
    authorize @sport
  end

  def sport_params
    params.require(:sport).permit(:name)
  end

  def render_error
    render json: { errors: @restaurant.errors.full_messages },
      status: :unprocessable_entity
  end
end
