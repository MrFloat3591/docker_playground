# Install Laravel with Docker

## Prerequisites

- Docker
- Docker Compose

## Project Structure

- `docker-compose.yml`: Configuration for services and environment
- `Dockerfile`: Docker image configuration for the application
- `install-laravel.sh`: Script to automate the Laravel installation process
- `src`: Directory containing the Laravel project (will be created after running the script)

## Installation

To install Laravel, run the `install-laravel.sh` script:

```bash
sh install-laravel.sh
```

The script will automatically:

- Remove the `src` directory (if it already exists)
- Stop and remove existing containers
- Rebuild the Docker images
- Restart the containers
- Create a new Laravel project in the `src` directory
