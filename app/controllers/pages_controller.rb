class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about services]

  def home
  end

  def about
  end

  def services
  end


end
