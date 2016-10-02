#!/bin/bash

rails prepare_tests && RAILS_ENV=test bundle exec rspec spec
