class ArticlesController < ApplicationController

  before_action :load_article , only: [:show, :update]

  def index
    # @articles = Article.joins(:author).published
    # fix n+1
    @articles = Article.includes(:author).published
  end

  def show
  end

  def create
    Article.create!(article_params)
  end

  def update
    @article.update! article_params
  end


  private

  def article_params
    params[:article].require(:title).permit(:body)
  end

  def load_article
    @article = Article.find(params[:id])
  end

end