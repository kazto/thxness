#!/bin/bash

set -e
number_of_cores=`nproc`
bundle check || bundle install -j"$number_of_cores"  --binstubs="$BUNDLE_BIN"
rm -f /app/tmp/pids/server.pid
exec "$@"
