class PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    post = Post.create(post_params)
    if post.persisted?
      redirect_to post
    else
      flash[:error] = "Unable to save! #{post.errors}"
      redirect_to :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :posted_at)
  end
end
