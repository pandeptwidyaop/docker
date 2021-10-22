#!/bin/sh
VERSION=v0.2

docker build \
    -t pandeptwidyaop/laravel:php7.3-$VERSION \
    -t pandeptwidyaop/laravel:php7.3 \
    .

docker image push pandeptwidyaop/laravel:php7.3-$VERSION
docker image push pandeptwidyaop/laravel:php7.3