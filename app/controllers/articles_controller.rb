class ArticlesController < ApplicationController

before_action :move_to_index, except: [:index, :show]

  def index
    @articles = Article.order("created_at DESC")
  end
  def show
    @article = Article.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
