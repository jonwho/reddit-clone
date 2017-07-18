class Api::V1::BaseController < ApplicationController
  include Rails::Pagination

  respond_to :json
end
