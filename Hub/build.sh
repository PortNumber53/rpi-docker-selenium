#!/usr/bin/env bash

docker build -t portnumber53/rpi-selenium-grid-hub . && \
docker push portnumber53/rpi-selenium-grid-hub
