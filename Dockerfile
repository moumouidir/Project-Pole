FROM php:8.4.3RC1-fpm-alpine3.20

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html
RUN chown -R www-data:www-data /var/www/html/
EXPOSE 80
