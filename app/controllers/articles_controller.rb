class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    # render json: { data: @articles }, status: :ok
    
  end
  def show
    @article=Article.find(params[:id])
    # render json: { data: @article }, status: :ok

  end
  
  def update
    @article=Article.find(params[:id])
    if @article.update(article_params)
      render json: { data: @article }, status: :ok
    else
      render json: { data: @article.errors }, status: :unprocessable_entity 
    end
  end


  def destroy
    @article=Article.find(params[:id])
    @article.destroy
    render json: { data: @article }, status: :ok
  end

  def create
    @article=Article.new(article_params)
    if @article.save
      render json: { data: @article }, status: :ok
    else
      render json: { data: @article.errors }, status: :unprocessable_entity 
    end
  end

  private
  def article_params
    params.permit(:title, :body)
  end

end
