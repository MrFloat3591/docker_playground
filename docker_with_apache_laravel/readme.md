# Laravel Docker Development Environment

This project provides a Docker-based development environment for Laravel applications using PHP 8.2, Apache, MySQL 8, Redis, Mailpit, and Adminer.

## Prerequisites

- Docker
- Docker Compose

## Project Structure

- `src/`: Laravel application source code
- `Dockerfile`: Defines the PHP/Apache container
- `docker-compose.yml`: Defines the multi-container Docker environment
- `.env.local.docker`: Environment variables for the Laravel application
- `setup-project.sh`: Script to set up the development environment
- `apache-config.conf`: Apache configuration file

## Services

- **app**: PHP 8.2 with Apache
- **db**: MySQL 8
- **redis**: Redis
- **mailpit**: Mail testing tool
- **adminer**: Database management tool

## Setup

1. Clone this repository.
2. Place your Laravel application code in the `src/` directory.
3. Run the setup script:

   ```bash
   sh setup-project.sh
   ```

   This script will:
   - Remove existing vendor and node_modules directories
   - Build and start Docker containers
   - Install Composer dependencies
   - Set up the Laravel application (generate key, run migrations, seed database)
   - Install NPM dependencies

## Usage

- Laravel application: http://localhost:8000
- Mailpit interface: http://localhost:8025
- Adminer: http://localhost:8080

## Environment Variables

The `.env.local.docker` file contains environment variables for the Laravel application. It's copied into the container and renamed to `.env` during setup.

## Customization

- Modify the `Dockerfile` to add or change PHP extensions or Apache configurations.
- Update `docker-compose.yml` to add or modify services.
- Adjust `.env.local.docker` for application-specific configurations.

## Troubleshooting

If you encounter any issues:
1. Check Docker logs: `docker compose logs`
2. Ensure all containers are running: `docker compose ps`
3. Verify file permissions in the `src/` directory

## Contributing

Feel free to submit issues or pull requests to improve this development environment.

