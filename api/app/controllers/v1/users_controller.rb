module V1
  class UsersController < BaseController
    def create
      user = User.new(user_params)

      if user.save
        render(
          json: UserSerializer.new(user).serialized_json,
          status: :created
        )
      else
        render(
          json: { errors: [{ status: '422' }.merge(user.errors)] },
          status: :unprocessable_entity
        )
      end
    end

    private

    def user_params
      params.permit(:name, :username, :password, :password_confirmation)
    end
  end
end
