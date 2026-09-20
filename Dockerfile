FROM php:8.1-apache

# MySQL और ज़रूरी PHP extensions इंस्टॉल करना
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Apache mod_rewrite इनेबल करना (SMM Panel की Routing के लिए)
RUN a2enmod rewrite

# आपकी सभी फ़ाइलों को वेब सर्वर फ़ोल्डर में कॉपी करना
COPY . /var/www/html/

EXPOSE 80
