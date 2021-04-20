#!/bin/sh
docker run --rm -ti -e "TERM=xterm-256color" -v $PWD:/app/ gradle-test
