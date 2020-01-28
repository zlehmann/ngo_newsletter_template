class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      render json: @post
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :category, :post_img, :keywords)
  end
end
