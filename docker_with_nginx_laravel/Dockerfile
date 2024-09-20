FROM php:8.2-fpm-alpine

# Install dependencies
RUN apk add --no-cache \
    nodejs \
    npm \
    git \
    zip \
    unzip \
    autoconf \
    g++ \
    make

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql
RUN pecl install redis && docker-php-ext-enable redis

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY ./src .

# Expose port 9000
EXPOSE 9000

CMD ["php-fpm"]
