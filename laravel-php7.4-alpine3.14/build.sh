#!/bin/sh
VERSION=v0.1

docker build \
    -t pandeptwidyaop/laravel:php7.4-alpine3.14-$VERSION \
    -t pandeptwidyaop/laravel:php7.4-alpine3.14 \
    .

docker image push pandeptwidyaop/laravel:php7.4-alpine3.14-$VERSION
docker image push pandeptwidyaop/laravel:php7.4-alpine3.14