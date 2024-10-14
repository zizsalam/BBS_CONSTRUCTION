class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @articles = Article.with_attached_image.order(published_at: :desc).limit(3)
  end

  def show
    @article = Article.find_by(id: params[:id])

    if @article.nil?
      redirect_to articles_path, alert: "Article not found"
    end
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    # Sanitize the body but allow <img> tags with specific attributes
    @article.body = sanitize(
      params[:article][:body],
      tags: %w(b i u em strong p br img), # Allow <img> tag
      attributes: %w(src alt width height) # Allow specific attributes for <img>
    )

    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end


  # Update an existing article
  def update
    @article.body = sanitize(params[:article][:body], tags: %w(b i u em strong p br), attributes: %w())

    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully deleted.'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content) # Add other allowed parameters
  end
end
