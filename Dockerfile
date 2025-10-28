FROM php:8.4-alpine

RUN apk add libc6-compat

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

ENV IPE_SAXON_EDITION="HE"

RUN install-php-extensions saxon

