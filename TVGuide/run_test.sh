#!/bin/bash

rails db:create && rails db:migrate && rails rubocop:lint && \
rails factory_girl:lint && RAILS_ENV=test bundle exec rspec spec
