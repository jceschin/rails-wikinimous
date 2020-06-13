class ArticlesController < ApplicationController
  # List all articles
  def index
    @articles = Article.all
  end

  # Show details of specific article
  def show
    @article = Article.find(params[:id])
  end

  # New instance variable
  def new
    @article = Article.new
  end

  # Create new article
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  # Update an article

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
