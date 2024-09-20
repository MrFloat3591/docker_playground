#!/bin/bash

echo "Removing existing 'src' directory..."
rm -rf src

echo "Stopping Docker containers..."
docker compose down

echo "Rebuilding Docker images without cache..."
docker compose build --no-cache

echo "Starting Docker containers..."
docker compose up -d

echo "Creating new Laravel project..."
docker compose exec web sh -c "
    composer create-project --prefer-dist laravel/laravel /var/www/html
"

echo "Laravel installation complete!"