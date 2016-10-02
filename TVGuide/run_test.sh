#!/bin/bash

rails db:create && rails db:migrate && rails code_check && RAILS_ENV=test bundle exec rspec spec
