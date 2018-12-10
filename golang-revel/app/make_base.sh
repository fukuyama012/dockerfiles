#!/usr/bin/env bash

# make network with nginx-proxy
docker network create --driver bridge shared

# revel new
docker-compose run --rm web revel new web

# golang dep
docker-compose run --rm --workdir="/go/src/web" web dep init

# copy Gopkg.toml to avoid prune package
cp -f ./config/myapp/Gopkg.toml ./myapp/src/web/Gopkg.toml 

# add necessary packages
docker-compose run --rm --workdir="/go/src/web" web dep ensure -add github.com/revel/modules/static

docker-compose build
