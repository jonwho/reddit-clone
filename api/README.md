# API - README

API yay.

## ENV VARS
DEV_JWT_PEM - for local development this will be the pem key used to sign each JWT. You can make one
in the rails console with `OpenSSL::PKey::RSA.generate(2048)`. Save the output into a file and
assign the filepath to the DEV_JWT_PEM env var. Then in your `secrets.yml` file add this

```
development:
  secret_key_base: blah...blah
  # add below!
  jwt_pem: <%= ENV['DEV_JWT_PEM'] %>
```

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
Some good practices can be found at [jsonapi.org](http://jsonapi.org/). Won't be following it super
perfectly but it's something to think about.

TBD more...
