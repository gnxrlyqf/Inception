# DEV_DOC.md

## Setting Up the Environment from Scratch
1. **Prerequisites:**
   - Docker and Docker Compose installed
   - Make utility for Makefile support
2. **Configuration Files:**
   - All service configs are in `srcs/requirements/` and `srcs/bonus/` subfolders.
3. **Secrets:**
   - Place required secret files (e.g., `sql_password.txt`, `sql_root_password.txt`) in `srcs/secrets/` before building.

## Building and Launching the Project
- With Makefile:
  ```sh
  make
  ```
- With Docker Compose directly:
  ```sh
  cd srcs
  docker compose up --build
  ```

## Managing Containers and Volumes
- List containers:
  ```sh
  make status
  ```
- Stop all:
  ```sh
  make stop
  ```
- Remove all volumes:
  ```sh
  make down
  ```
- Execute shell in a container:
  ```sh
  docker compose exec <service> bash
  ```

## Data Storage and Persistence
- Project data is stored in Docker volumes defined in `docker-compose.yml`.
- Volumes persist data across container restarts and rebuilds.
- Volumes are located in /home/mchetoui/data
