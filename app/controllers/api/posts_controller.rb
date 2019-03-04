class Api::PostsController < ApplicationController
  before_action :require_login, only: [:create, :update, :destroy]

  def create
    @post = Post.new(post_params)
    @post.author_id = current_user.id
    if @post.save
      render 'api/posts/show'
    else
      render json: @post.errors.full_messages, status: 422
    end
  end
  
  def index
    @posts = Post.all
    render 'api/posts/index'
  end

  def show
    @post = Post.find(params[:id])
    # if @post
      render 'api/posts/show'
    # else
    #   render json: @post.errors.full_messages, status: 404
    # end
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      render 'api/posts/show'
    else
      render json: @post.errors.full_messages, status: 422
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    @posts = Post.all
    render 'api/posts/index'
  end

  private
  
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
