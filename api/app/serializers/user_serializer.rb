class UserSerializer
  include FastJsonapi::ObjectSerializer

  set_type :user
  attributes :name, :username, :email, :created_at, :updated_at, :jwt_token
end
