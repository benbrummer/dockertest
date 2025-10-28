FROM php:8.2-fpm-alpine3.20

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions saxon

