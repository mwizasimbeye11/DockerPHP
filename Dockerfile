FROM php:7.3-apache
#Install git
RUN apt-get update \  apt-get install -y git
RUN docker-php-ext-install pdo
RUN a2enmod rewrite
COPY src/ /var/www/html/
EXPOSE 80
