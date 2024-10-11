# app/controllers/articles_controller.rb
class ArticlesController < ApplicationController
  def index
    @articles = Article.with_attached_image.all
    # For debugging
    Rails.logger.debug "Articles count: #{@articles.try(:count)}"
  rescue => e
    Rails.logger.error "Error in articles#index: #{e.message}"
    @articles = [] # Fallback to empty array
  end

  def show
    @article = Article.find(params[:id])
    @parsed_content = @article.parsed_content
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :image)
  end
end

# For debugging, you can add this to config/environments/development.rb
# config.log_level = :debug
