# README

Example Rails 5 (JSON API + views) app in dockerized environment.

### Setup

#### Dev environment

`$ docker-compose build`

`$ docker-compose up dev`

#### Tests

`$ docker-compose build`

`$ docker-compose run test`

### Details

App features:

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


* Custom rake tasks for rubocop and populating database


### Custom tasks

Please note, that following must be executed from within proper docker machine, eg.
`$ docker-compose run --rm dev bash -l`.

###### Populate database with random data
Used for dev environment setup

`$ rails populate:random_data`


###### Run FactoryGirl lint
Used before running RSpec test suite as separate task

`$ rails rails factory_girl:lint`


###### Run Rubocop lint
Used before running RSpec test suite as separate task

`$ rails rails rubocop:lint`
