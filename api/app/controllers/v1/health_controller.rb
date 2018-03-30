module V1
  class HealthController < BaseController
    def ping
      render json: { data: { message: 'pong' } }, status: :ok
    end
  end
end
