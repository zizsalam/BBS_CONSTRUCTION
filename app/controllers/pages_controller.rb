class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about services]


  def home
    @articles = Article.with_attached_image.order(published_at: :desc).limit(3)
  rescue => e
    Rails.logger.error "Error loading articles for home page: #{e.message}"
    @articles = []
  end

  def about
  end

  def services
  end


end
