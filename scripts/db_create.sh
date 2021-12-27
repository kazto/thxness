#!/bin/sh

docker --rm -it -e DB_HOST=db thxness_rails bundle exec rake db:create