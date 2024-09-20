#!/bin/bash

echo "Deleting src/vendor/ directory"
rm -rf src/vendor/

echo "Deleting src/node_modules/ directory"
rm -rf src/node_modules/

echo "Deleting contents of src/storage/logs/"
rm -rf src/storage/logs/*

echo "Stopping Docker containers"
docker compose down

echo "Building Docker images without cache"
docker compose build --no-cache

echo "Starting Docker containers"
docker compose up -d

echo "Copying .env.local.docker to .env"
docker compose exec app sh -c "cp .env.local.docker .env"

echo "Installing Composer dependencies and setting up Laravel"
docker compose exec app sh -c "
    echo 'Running composer install' && 
    composer install && 
    echo 'Generating application key' && 
    php artisan key:generate && 
    echo 'Dropping all tables' && 
    php artisan db:wipe && 
    echo 'Running database migrations' && 
    php artisan migrate && 
    echo 'Seeding database' && 
    php artisan db:seed
"

echo "Installing NPM dependencies"
docker compose exec app sh -c "
    echo 'Running npm install' && 
    npm install
"

echo "Setup complete!"
