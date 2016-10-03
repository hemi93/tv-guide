# README

Example Rails 5 (JSON API + views) app in dockerized environment.

### Setup

#### Dev environment

`$ docker-compose build`

`$ docker-compose up dev`

#### Tests

`$ docker-compose build`

`$ docker-compose run test`

### Features

* Docker with docker-compose

* RSpec

* JSON schema matching for api endpoints

* API versioning

* PostgreSQL (on separate dockerized machine)

* Fully dockerized test environment

* Strict code quality checking - following must not be present for tests to pass:
  * Rubocop - App code style warning and errors
  * Rubocop - RSpec code style warning and errors
  * Bullet - N+1 or unused eager loading
  * FactoryGirl - factory errors (including traits)
  * Reek - Code smell warnings (with customized config file for rails)


* Custom rake tasks for preparing dev and test environments, code quality checking, etc.

* Code coverage checking - results will appear at `/coverage/index.html` after running tests

### What's not included at this moment

* Token API authorization

* Tests for default jobs/channels/mailers (not used at all). Excluded from coverage results.
