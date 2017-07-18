class Api::V1::PostsController < ApplicationController
  def index
    paginate json: Post.by_date, per_page: 20
  end

  def create

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
