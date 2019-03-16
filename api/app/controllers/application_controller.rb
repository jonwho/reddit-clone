class ApplicationController < ActionController::API
  before_action :ensure_json_request

  def ensure_json_request
    return if json_request?

    render nothing: true, status: :not_acceptable && return
  end

  def authorize_request
    render status: :unauthorized unless AuthorizationService.authorize(headers)
  end

  private

  def json_request?
    byebug
    params[:format] == :json
  end
end
