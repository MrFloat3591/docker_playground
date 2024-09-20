# Install Laravel with Docker

## Prerequisites

- Docker
- Docker Compose

## Project Structure

- `docker-compose.yml`: Cấu hình các dịch vụ và môi trường
- `Dockerfile`: Cấu hình các dịch vụ và môi trường
- `src`: Thư mục chứa code Laravel

## Commands on Windows

### Run on local machine
```
docker-compose up --build
winpty docker exec -it <container_id_or_name> /bin/bash
```

### Run inside container
```
composer create-project --prefer-dist laravel/laravel /var/www/html
```

## Commands on Linux

### Run on local machine
```
docker-compose up --build
docker exec -it <container_id_or_name> /bin/bash
```

### Run inside container
```
composer create-project --prefer-dist laravel/laravel /var/www/html
```

## Commands on macOS

### Run on local machine
```
docker-compose up --build
docker exec -it <container_id_or_name> /bin/bash
```

### Run inside container
```
composer create-project --prefer-dist laravel/laravel /var/www/html
```