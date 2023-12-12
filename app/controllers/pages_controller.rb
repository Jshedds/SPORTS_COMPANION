class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    @athlete = Athlete.new
    skip_authorization
  end
end
