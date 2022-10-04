FROM php:7.4.32-apache

RUN apt-get update && apt-get install apt-utils
RUN a2enmod rewrite && a2enmod headers

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions gd zip

COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf
WORKDIR /var/www/html
RUN usermod -u 1000 www-data
#RUN chown -R www-data:www-data /var/www/html
EXPOSE 80
