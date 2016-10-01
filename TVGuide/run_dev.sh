#!/bin/bash

rm -f tmp/pids/server.pid && rails db:migrate && rails db:setup && rails populate:random_data && rails s -p 3000 -b '0.0.0.0'
