class Api::V1::CommentsController < Api::V1::BaseController
  before_action :require_login, only: [:create, :update, :destroy]

  def index
  end

  def create
  end

  def update
  end

  def destroy
  end
end
