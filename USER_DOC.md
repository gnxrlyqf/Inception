# USER_DOC.md

## Services Provided by the Stack
- **Nginx**: Web server and reverse proxy
- **WordPress**: Content management system
- **MariaDB**: Database for WordPress
- **Adminer**: Database management interface
- **FTP**: File transfer service
- **Redis**: In-memory data store
- **Webserv**: Custom web server (bonus)
- **lftp-tty**: FTP client (bonus)

## Starting and Stopping the Project
- **Start:**
  ```sh
  make up
  ```
- **Stop:**
  ```sh
  make down
  ```

## Accessing the Website and Admin Panel
- **Website:** https://localhost/
- **WordPress Admin Panel:** https://localhost/wordpress/wp-admin
- **Adminer:** http://localhost:8081
- **FTP web-terminal:** http://localhost:7681

## Locating and Managing Credentials
- Credentials are stored in the `srcs/secrets/` directory (e.g., `sql_password.txt`, `sql_root_password.txt`).
- WordPress and database credentials are set via environment variables or Docker secrets (see docker-compose.yml and service setup scripts).

## Checking Service Status
- Run:
  ```sh
  make run
  ```
- All services should show as "Up".
- For logs:
  ```sh
  make status
  ```
