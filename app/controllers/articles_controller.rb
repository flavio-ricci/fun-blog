class ArticlesController < ApplicationController
  def index
    # @articles = Article.joins(:author).published
    # fix n+1
    @articles = Article.includes(:author).published
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    Article.create!(article_params)
  end

  def update
    article = Article.find(params[:id])
    article.update! article_params
  end


  private

  def article_params
    params[:article].require(:title).permit(:body)
  end

end