#!/bin/bash

echo "Xóa các thư mục node_modules và vendor nếu tồn tại"
# Kiểm tra xem node_modules có tồn tại không, nếu tồn tại thì xóa và echo
if [ -d "src/node_modules" ]; then
    echo "Xóa các thư mục node_modules"
    rm -rf src/node_modules
fi

# Kiểm tra xem vendor có tồn tại không, nếu tồn tại thì xóa và echo
if [ -d "src/vendor" ]; then
    echo "Xóa các thư mục vendor"
    rm -rf src/vendor
fi

# Xóa file trong thư mục storage/logs
if [ -d "src/storage/logs" ]; then
    echo "Xóa các file trong thư mục storage/logs"
    rm -rf src/storage/logs/*
fi

# Dừng và xóa các container hiện có (nếu có)
echo "Dừng và xóa các container hiện có"
docker compose down
echo "================================"


# Build các images (sử dụng --no-cache nếu bạn muốn build lại từ đầu)
echo "Build các images"
docker compose build --no-cache
echo "================================"

# Khởi động các services
echo "Khởi động các services"
docker compose up -d

echo "Service app đã khởi động. Chạy lệnh php artisan migrate và php artisan db:seed"
cp .env.example.docker.local src/.env
docker compose exec app sh -c "
    composer install && \
    php artisan key:generate && \
    php artisan migrate:fresh --seed && \
    npm install
"
