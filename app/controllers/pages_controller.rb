class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    skip_authorization
  end
end
