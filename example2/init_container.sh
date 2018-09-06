#!/usr/bin/env bash

# rails api mode
docker-compose run --rm app rails new . --force --api -d mysql --skip-bundle

cp -f config/myapp/database.yml myapp/config/database.yml

docker-compose build
