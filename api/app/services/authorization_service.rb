module AuthorizationService
  extend self

  def authorize(headers)
    # example header looks like
    # Authorization: Bearer <token>
    token = if headers['Authorization'].present?
      headers['Authorization'].split(' ').last
    end

    return false if token.blank?

    JwtService.decode(token)
  end
end
