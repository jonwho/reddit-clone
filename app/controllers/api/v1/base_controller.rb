class Api::V1::BaseController < ApplicationController
  # no csrf token for API
  skip_before_action :verify_authenticity_token
  respond_to :json
end
