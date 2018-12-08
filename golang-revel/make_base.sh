#!/usr/bin/env bash

# revel new
docker-compose run --rm app_dev revel new web

# golang dep
docker-compose run --rm --workdir="/go/src/web" app_dev dep init

# copy Gopkg.toml to avoid prune package
cp -f ./config/myapp/Gopkg.toml ./myapp/src/web/Gopkg.toml 

# add necessary packages
docker-compose run --rm --workdir="/go/src/web" app_dev dep ensure -add github.com/revel/modules/static

docker-compose build
