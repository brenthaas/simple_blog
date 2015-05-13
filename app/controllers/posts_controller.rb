class PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def new
    @post = Post.new
  end

end
