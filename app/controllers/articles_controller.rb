class ArticlesController < ApplicationController

before_action :authenticate_user!, except: [:index, :show]
load_and_authorize_resource

def index 
  @articles = Article.all
end

def new
  @article = Article.new
end

def create
  article = Article.create(article_params)
  article.update(user_id: current_user.id)
  redirect_to articles_path
end

def edit
  @article = Article.find(params[:id]) 
end

def update
  article = Article.find(params[:id])
  article.update(article_params)
  redirect_to article_path(article)
end

def show
  @article = Article.find(params[:id])
end

def destroy
  article = Article.find(params[:id])
  article.destroy
  redirect_to(articles_path)
end

private

def article_params
  params.require(:article).permit(:title, :content, :image, :user_id)
end




end
