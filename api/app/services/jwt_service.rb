module JwtService
  extend self

  ALGORITHM = 'RS256'

  def encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, private_key, ALGORITHM)
  end

  def decode(token)
    body = JWT.decode(token, private_key.public_key, true, { algorithm: ALGORITHM })[0]
    HashWithIndifferentAccess.new(body)
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
