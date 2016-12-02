#!/usr/bin/env bash

cd ./Base
./build.sh
cd ..

cd ./Hub
./build.sh
cd ..

cd ./NodeBase
./build.sh
cd ..

cd ./NodeDebug
./build.sh
cd ..

#Build Firefox node
cd ./NodeFirefox
./build.sh
cd ..

cd ./NodeFirefoxDebug
./build.sh
cd ..


