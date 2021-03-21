FROM php:7.4.16-cli

MAINTAINER Marek Miernik <miernik.marek@gmail.com>

WORKDIR /opt/app/

ENV USER_LOGIN    www-data
ENV USER_HOME_DIR /home/$USER_LOGIN
ENV APP_DIR       /opt/app

############ PHP-CLI ############

# CREATE WWW-DATA HOME DIRECTORY
RUN set -x \
    && mkdir /home/www-data \
    && chown -R www-data:www-data /home/www-data \
    && usermod -u 1000 --shell /bin/bash -d /home/www-data www-data \
    && groupmod -g 1000 www-data