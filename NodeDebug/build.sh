#!/usr/bin/env bash

docker build -t portnumber53/rpi-selenium-node-debug-base . && \
docker push portnumber53/rpi-selenium-node-debug-base
