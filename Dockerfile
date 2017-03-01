FROM hitalos/laravel
MAINTAINER Simon Hartcher <github.com/deevus>
ARG PHP_EXTENSIONS=
ARG APK_PACKAGES=

RUN mkdir -p /etc/ssl/certs && \
    update-ca-certificates && \
    apk add --update $APK_PACKAGES && \
    docker-php-ext-configure $PHP_EXTENSIONS --with-libdir=lib/ && \
    docker-php-ext-install $PHP_EXTENSIONS