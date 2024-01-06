#!/bin/sh

set -e
docker build -t busybuilder -f busybuilder/Containerfile busybuilder
mkdir -p output
docker run --rm -v $PWD/output:/output -e MAKEFLAGS busybuilder
