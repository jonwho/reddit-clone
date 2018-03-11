class ApplicationController < ActionController::API
  before_action :check_json_format

  def check_json_format
    if params[:format] != 'json' && request.headers['Accept'] =~ /json/
      render nothing: true, status: :bad_request
    end
  end
end
