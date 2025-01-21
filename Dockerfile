FROM wordpress:cli

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN composer --version

WORKDIR /var/www/html
