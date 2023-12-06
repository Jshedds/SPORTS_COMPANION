class RulesController < ApplicationController
  def create
    authorize @rule
  end

  def update
    authorize @rule
  end
end
