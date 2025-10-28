FROM php:8.4-alpine

RUN apk add libc6-compat

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions saxon

