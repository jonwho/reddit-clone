module V1
  class UsersController < BaseController
    def create
      user = User.create(user_params)

      if user.save
        render json: UserSerializer.new(user).serialized_json, status: :created
      else
        render status: :bad_request
      end
    end

    private

    def user_params
      params.permit(:name, :username, :password, :password_confirmation)
    end
  end
end
