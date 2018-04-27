class ApplicationController < ActionController::API
  before_action :ensure_json_request

  def ensure_json_request
    if params[:format] != 'json' && request.headers['Accept'] =~ /json/
      render nothing: true, status: :not_found
    end
  end

  def authorize_request
    render status: :unauthorized unless AuthorizationService.authorize(headers)
  end
end
