class PostsController < ApplicationController
  before_action :allow_cross_domain

  def index
    @posts = Post.all
    render json: { posts: @posts }
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.json { render json: @post, status: :created }
      else
        format.json { render json: @post.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

private

  def post_params
    params.require(:post).permit(:title,:content)
  end

  def allow_cross_domain
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
  end

end
