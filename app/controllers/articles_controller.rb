class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update, :destroy]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  def index
    @articles = Article.all.order(created_at: :desc) # This will show the latest articles first
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  def create
    @article = Article.new(article_params)
    @article.author = current_user  # Définit l'utilisateur connecté comme auteur de l'article

    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
    redirect_to root_path, notice: 'Article was successfully destroyed.'
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to articles_path, alert: "Article not found."
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :body) # Adjust based on your article fields
    end
end
