module JwtService
  extend self

  ALGORITHM = 'RS256'

  # Encode a payload into a token.
  #
  # @param payload [Hash] data to encode
  # @param exp [Integer] time of expiration for the token
  #
  # @return [String] encrypted token string
  def encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, private_key, ALGORITHM)
  end

  # Try to decode a token using our private key.
  #
  # @param token [String] an encrypted token string
  #
  # @return [Array<payload, header>]
  def decode(token)
    JWT.decode(token, private_key.public_key, true, { algorithm: ALGORITHM })
  rescue JWT::VerificationError => e
    # TODO: handle bad token
  rescue JWT::ExpiredSignature => e
    # TODO: handle expired token
  rescue
    nil
  end

  def private_key
    pem = File.read(Rails.application.secrets.jwt_pem)
    OpenSSL::PKey::RSA.new(pem)
  end
end
