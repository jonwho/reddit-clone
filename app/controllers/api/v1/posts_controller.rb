class Api::V1::PostsController < Api::V1::BaseController
  before_action :require_login, only: [:create, :update, :destroy]

  def index
    paginate json: Post.by_date, per_page: 20
  end

  def create
    post = Post.create(post_params)
    if post.save
      render json: post
    else
      render json: { error: 'Invalid parameters given' }, status: :bad_request
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
