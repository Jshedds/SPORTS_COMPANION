class TerminologiesController < ApplicationController
  def create
    authorize @terminology
  end

  def update
    authorize @terminology
  end
end
