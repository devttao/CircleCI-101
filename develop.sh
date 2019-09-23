#!/usr/bin/env bash
# This is for build develop environment

# build dev container
docker build -t circleci-test .

# delete dev container
docker rm -f circleci-test_container &> /dev/null

# start dev container
docker run -it -v $PWD:/code --name circleci-test_container circleci-test
