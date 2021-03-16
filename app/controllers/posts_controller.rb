class PostsController < ApplicationController
  def home
    @post = Post.all.order(created_at: :desc)
  end
  def new
    @post = Post.new
  end
  def create
    Post.create(post_params)
    redirect_to new_post_path
  end
  private
  def post_params
    params.require(:post).permit(:content)
  end
end

