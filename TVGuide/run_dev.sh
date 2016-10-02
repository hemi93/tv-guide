#!/bin/bash

rm -f tmp/pids/server.pid && rails prepare_dev && rails s -p 3000 -b '0.0.0.0'
