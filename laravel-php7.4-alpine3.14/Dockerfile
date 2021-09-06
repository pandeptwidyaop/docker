FROM php:7.4-fpm-alpine3.14

LABEL Maintainer="Pande Putu Widya Oktapratama"

RUN apk add --no-cache nginx supervisor curl tzdata bash shadow freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev icu-dev git\
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php \
    && mv composer.phar /usr/local/bin/composer \
    && rm /etc/nginx/http.d/default.conf \
    && touch /etc/crontab 

ENV SUPERCRONIC_URL=https://github.com/aptible/supercronic/releases/download/v0.1.12/supercronic-linux-amd64 \
    SUPERCRONIC=supercronic-linux-amd64 \
    SUPERCRONIC_SHA1SUM=048b95b48b708983effb2e5c935a1ef8483d9e3e

RUN curl -fsSLO "$SUPERCRONIC_URL" \
    && echo "${SUPERCRONIC_SHA1SUM}  ${SUPERCRONIC}" | sha1sum -c - \
    && chmod +x "$SUPERCRONIC" \
    && mv "$SUPERCRONIC" "/usr/local/bin/${SUPERCRONIC}" \
    && ln -s "/usr/local/bin/${SUPERCRONIC}" /usr/local/bin/supercronic

RUN docker-php-ext-install pdo pdo_mysql sockets gd intl

COPY ./src/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./src/nginx.conf /etc/nginx/nginx.conf
COPY ./src/vhost.conf /etc/nginx/http.d/default.conf

EXPOSE 8000

CMD [ "/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]