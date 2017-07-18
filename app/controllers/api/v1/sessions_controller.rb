# TODO: figure out how to combine this with other devise modules in user
# seems to be duplicate routing because of devise session routing
# need to integrate the auth token stuff with devise
# this is not really an API controller, should move it out of api namespace and routing
class Api::V1::SessionsController < Api::V1::BaseController
  skip_before_action :require_login, only: [:create], raise: false

  def create
    if user = User.valid_login?(params[:email], params[:password])
      user.allow_token_once
      send_auth_token_for(user)
    else
      render_unauthorized('Error with your login or password')
    end
  end

  def destroy
    current_user.logout
    head :ok
  end

  private

  def send_auth_token_for(user)
    render json: { token: user.auth_token }
  end
end
