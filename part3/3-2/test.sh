#!/bin/bash

git clone https://github.com/docker-hy/docker-hy.github.io

cd docker-hy.github.io

docker build . -t adamfarhadi/coursepage:3-2

docker login

docker push adamfarhadi/coursepage:3-2