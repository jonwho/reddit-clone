module AuthenticationService
  extend self

  def authenticate(email, username, password)
    user = User.find_by_sql(
      <<~SQL
        SELECT id FROM users u
        WHERE u.email = '#{email}' OR u.username = '#{username}'
      SQL
    ).first

    if user && User.find(user.id).authenticate(password)
      JwtService.encode(user_id: user.id)
    end
  end
end
