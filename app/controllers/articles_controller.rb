class ArticlesController < ApplicationController
  # List all articles
  def index
    @articles = Article.all
  end

  # Show details of specific article
  def show
    @article = Article.find(params[:id])
  end
end
