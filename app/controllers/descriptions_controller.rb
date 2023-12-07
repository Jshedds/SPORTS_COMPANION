class DescriptionsController < ApplicationController
  def update
    authorize @description
  end

  def create
    authorize @description
  end
end
