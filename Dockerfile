FROM php:8.0-apache

COPY . /app

RUN apt-get update && \
    apt-get install -y \
        nano

COPY conf/vhost.conf /etc/apache2/sites-available/000-default.conf
COPY conf/apache.conf /etc/apache2/conf-available/my-app.conf

RUN a2enconf my-app
