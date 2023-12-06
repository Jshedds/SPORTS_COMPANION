class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    # policy_scope(Page)
    skip_authorization
  end
end
