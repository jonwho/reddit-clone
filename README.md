# reddit-clone

## Description
This app sets out to be like Reddit. The project to separated into two projects api and frontend.
Reasoning being that I want to work with the new and shiny (rails5 & react+redux).

## Development
See READMEs in the project directory on how to build and use the app.

Run `docker-compose up` to have both api and frontend app running on ports 3000 and 3001
respectively. NOTE: pretty sure the `bin/rails secrets:edit` thing got messed up for the
rails api. Double check this and most likely can share between host and docker environments.

## Heroku deployment
Use docker compose to orchestrate deployment.

Run the following commands to deploy to Heroku:

- [ ] FIGURE THIS OUT
