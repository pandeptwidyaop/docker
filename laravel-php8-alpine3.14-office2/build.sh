#!/bin/sh
VERSION=v0.2
docker build \
    -t pandeptwidyaop/laravel:php8-alpine3.14-office2-${VERSION} \
    -t pandeptwidyaop/laravel:php8-alpine3.14-office2 \
    .

docker image push pandeptwidyaop/laravel:php8-alpine3.14-office2-${VERSION}
docker image push pandeptwidyaop/laravel:php8-alpine3.14-office2