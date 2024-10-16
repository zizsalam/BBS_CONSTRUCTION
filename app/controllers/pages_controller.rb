class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :services]

  # If you have a specific layout for pages, uncomment and modify this line:
  layout "application"
  def home
    @articles = Article.all
    end

  def about
  end

  def services
  end
end
