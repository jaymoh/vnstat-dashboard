FROM php:8.0-apache

MAINTAINER James Shisiah <jamesshisiah@gmail.com>

# Install Git
RUN apt-get update && apt-get install -y git unzip

# Install Composer to handle dependencies
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

# Copy application source code to html directory
COPY ./app/ /var/www/html/

# Install dependencies
RUN composer install

RUN mkdir -p /var/lib/vnstat
