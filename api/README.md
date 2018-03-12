# README

## Development
Using rails secrets encryption to manage secrets. Run the following command:

`bin/rails secrets:edit`

to add additional secrets. After editing the yml file it will be encrypted again.

Read a secret using `Rails.application.secrets.<key_name>`.

Authentication is done through JWT. If secrets are lost then generate the PEM for
JWT RSA algorithm with `OpenSSL::PKey::RSA.generate(2048)`.

See (https://github.com/jwt/ruby-jwt)[jwt docs] for more.

## Testing
TBD

## Deployment
TBD
