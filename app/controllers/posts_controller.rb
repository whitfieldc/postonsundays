class PostsController < ApplicationController
  before_action :allow_cross_domain

  def index
    @posts = Post.all
    render json: { posts: @posts }
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors.full_messages, status: :unprocessable_entity
    end
  end

private

  def post_params
    params.require(:post).permit(:title,:content,:author_name)
  end

  def allow_cross_domain
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
  end

end
