#!/bin/bash

set -ex

handler() {
    kill -s SIGTERM $PID
    wait $PID
}

trap handler SIGTERM

./signal.rb &
PID=$!
wait $!
