class PostsController < ApplicationController
  before_action :allow_cross_domain

  def index
    @posts = Post.all
    render json: { posts: @posts }
  end

private

  def allow_cross_domain
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
  end

end
