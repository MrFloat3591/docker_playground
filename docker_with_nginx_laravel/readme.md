# Docker with Nginx and Laravel

This project sets up a development environment for a Laravel application using Docker, Nginx, PHP-FPM, MySQL, Redis, Mailpit, and Adminer.

## Prerequisites

- Docker
- Docker Compose

## Project Structure

- `docker-compose.yml`: Defines the services and their configurations.
- `Dockerfile`: Contains instructions for building the PHP-FPM image.
- `nginx.conf`: Nginx configuration for serving the Laravel application.
- `setup-project.sh`: Shell script to set up the project environment.
- `src`: Laravel project source code.

## Services

- **app**: PHP-FPM service for running the Laravel application.
- **webserver**: Nginx web server.
- **db**: MySQL database.
- **redis**: Redis service for caching.
- **mailpit**: Mail testing tool.
- **adminer**: Database management tool.

## Getting Started

1. Clone this repository.
2. Run the setup script:
   ```bash
   sh setup-project.sh
   ```
   This script will:
   - Remove existing `node_modules` and `vendor` directories.
   - Clear log files.
   - Stop and remove existing containers.
   - Build Docker images.
   - Start the services.
   - Set up the Laravel environment.

3. Access the application at `http://localhost:8088`.

## Additional Information

- Database management (Adminer): `http://localhost:8888`
- Mail testing (Mailpit): `http://localhost:8025`
- MySQL port: 3306
- Redis port: 6379

## Customization

You can modify the `docker-compose.yml` file to adjust service configurations as needed.

## Troubleshooting

If you encounter any issues, try rebuilding the images:

