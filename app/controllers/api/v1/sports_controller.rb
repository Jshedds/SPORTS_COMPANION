class Api::V1::SportsController < Api::V1::BaseController
acts_as_token_authentication_handler_for User, except: [ :index, :show ]
before_action :set_sport, only: [:show, :update, :destroy]

  def index
    @sports = policy_scope(Sport)
  end

  def show
    authorize @sport
  end

  def update
    @sport.update(sport_params)
    authorize @sport
    if @sport.update(sport_params)
      render :show
    else
      render_error
    end
  end

    def create
      @sport = Sport.new(sport_params)
      @sport.user = current_user
      authorize @sport
      if @sport.save
        render :show, status: :created
      else
        render_error
      end
    end

    def destroy
      authorize @sport
      @sport.destroy
      # head :no_content
      render json: { message: "It worked!"}
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
