
## Setting Up Fresh Framework with Docker Container

To install the Fresh framework, run the following command:

```bash
docker run -it --rm -v ${PWD}:/app -w /app denoland/deno:alpine run -A --unstable https://deno.land/x/fresh@1.0.0/init.ts my-fresh-app
```

## Command to Run Fresh Framework After Installation

After the installation, you can run the Fresh framework with the following command:

```bash
docker run -it --rm -p 8000:8000 -v ${PWD}:/app -w /app denoland/deno:alpine run -A --watch --unstable main.ts
```

## Run with docker compose

```bash
cp docker-compose.yml my-fresh-app\docker-compose.yml

docker compose up
```
