#!/usr/bin/env bash

docker build -t portnumber53/rpi-selenium-node-firefox-debug . && \
docker push portnumber53/rpi-selenium-node-firefox-debug
