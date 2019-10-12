FROM php:7.2-apache
RUN a2enmod rewrite; \
    chown -R www-data:www-data /var/www/html; \
    docker-php-ext-install pdo_mysql;\
    /etc/init.d/apache2 restart;
COPY ./config/apache2.conf /etc/apache2/apache2.conf
WORKDIR /var/www/
RUN apt-get update \
    && apt-get install -y \
        vim
RUN chmod -R 755 html
RUN  mv public html
EXPOSE 80
ENTRYPOINT mv public html&& /bin/bash