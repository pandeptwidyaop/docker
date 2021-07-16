#!/bin/sh
docker build \
    -t pandeptwidyaop/laravel:php8-alpine3.14-v0.1 \
    -t pandeptwidyaop/laravel:php8-alpine3.14 \
    .

docker image push pandeptwidyaop/laravel:php8-alpine3.14-v0.1
docker image push pandeptwidyaop/laravel:php8-alpine3.14