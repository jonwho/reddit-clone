module V1
  class AuthenticationController < BaseController
    def authenticate
      email    = params[:email]
      username = params[:username]
      password = params[:password]

      if (email || username) && password
        token = AuthenticationService.authenticate(email, username, password)

        if token
          render json: { data: { token: token } }, status: :ok
        else
          render status: :unauthorized
        end
      else
        render status: :bad_request
      end
    end
  end
end
