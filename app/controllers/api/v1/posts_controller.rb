class Api::V1::PostsController < ApplicationController
  def index
    paginate json: Post.by_date, per_page: 20
  end

  def create
    post = Post.create(post_params)
    if post.save
      render json: post
    else
      render json: { error: 'Invalid params' }, status: :bad_request
    end
  end

  def update

  end

  def destroy

  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
