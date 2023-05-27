#!/bin/sh
VERSION=v0.1

docker build \
    -t pandeptwidyaop/laravel:php7.2-$VERSION \
    -t pandeptwidyaop/laravel:php7.2 \
    .

docker image push pandeptwidyaop/laravel:php7.2-$VERSION
docker image push pandeptwidyaop/laravel:php7.2