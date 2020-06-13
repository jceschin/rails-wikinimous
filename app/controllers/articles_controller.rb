class ArticlesController < ApplicationController
  # List all articles
  def index
    @articles = Article.all
  end
end
