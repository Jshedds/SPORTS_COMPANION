class FamousPlayersController < ApplicationController
  def create
    authorize @famous_player
  end

  def update
    authorize @famous_player
  end
end
