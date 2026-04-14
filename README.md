*This project has been created as part of the 42 curriculum by mchetoui*

# Description
This project is an Inception-style multi-container infrastructure built with Docker, as part of the 42 curriculum. Its goal is to introduce students to containerization, orchestration, and service isolation using Docker Compose. The project includes several services (Nginx, WordPress, MariaDB, and various bonus services) each running in its own container, with custom configurations and inter-container networking.

## Project Description
- **Docker Usage:** Each service runs in its own Docker container, built from custom Dockerfiles. Docker Compose is used to orchestrate the build and startup of all services, ensuring proper networking and dependency management.
- **Sources Included:**
  - Custom Dockerfiles and configuration files for each service (Nginx, WordPress, MariaDB, Adminer, FTP, Redis, etc.).
  - Docker Compose YAML file for orchestration.
  - Service-specific scripts and configuration directories.
- **Main Design Choices:**
  - Service isolation for security and maintainability.
  - Use of Docker Compose for easy orchestration and reproducibility.
  - Custom configuration for each service to meet project requirements.

### Comparison Table
| Topic                        | Option 1                | Option 2             | Comparison Summary                                                                 |
|------------------------------|-------------------------|----------------------|-----------------------------------------------------------------------------------|
| Virtual Machines vs Docker   | Virtual Machines        | Docker               | Docker is lighter, faster, and uses OS-level isolation; VMs are heavier but more isolated. |
| Secrets vs Env Variables     | Secrets (files)         | Environment Variables| Secrets are more secure for sensitive data; env vars are easier but less secure.   |
| Docker Network vs Host Net   | Docker Network          | Host Network         | Docker network isolates containers; host network shares host's stack, less isolation. |
| Docker Volumes vs Bind Mounts| Docker Volumes          | Bind Mounts          | Volumes are managed by Docker, portable; bind mounts map host dirs, more flexible. |

# Instructions
1. **Clone the repository:**
   ```sh
   git clone <repo-url>
   cd Inception/srcs
   ```
2. **Build and start the services:**
   ```sh
   make up
   ```
3. **Access services:**
   - Wordpress: https://localhost
   - Webserv: http://localhost:8080
   - FTP web-terminal: http://localhost:7681
   - Adminer: http://localhost:8081

# Resources
[Docker documentation](https://docs.docker.com/)
[Nginx documentation](https://nginx.org/en/docs/)
[Wordpress official Nginx configuration](https://developer.wordpress.org/advanced-administration/server/web-server/nginx/)
[Redis tutorial](https://www.youtube.com/watch?v=jgpVdJB2sKQ)

## Use of AI
AI (GitHub Copilot) was used for:
- Research and learning
- Providing troubleshooting steps and explanations
- Suggesting best practices for Docker and service configuration

# Directory Structure
```
srcs
├── bonus
│   ├── adminer
│   │   └── Dockerfile
│   ├── ftp
│   │   ├── Dockerfile
│   │   └── tools
│   │       └── setup.sh
│   ├── lftp-tty
│   │   ├── Dockerfile
│   │   └── tools
│   │       └── start.sh
│   ├── redis
│   │   └── Dockerfile
│   └── webserv
│       ├── Dockerfile
│       ├── conf
│       │   └── webserv.conf
│       └── tools
│           └── start.sh
├── docker-compose.yml
├── requirements
│   ├── mariadb
│   │   ├── Dockerfile
│   │   ├── conf
│   │   │   └── 50-server.cnf
│   │   └── tools
│   │       └── setup.sh
│   ├── nginx
│   │   ├── Dockerfile
│   │   ├── conf
│   │   │   ├── nginx.conf
│   │   │   └── server.conf
│   └── wordpress
│       ├── Dockerfile
│       ├── conf
│       │   └── www.conf
│       └── tools
│           └── setup.sh
```

# Additional Information
- For usage examples, troubleshooting, and advanced configuration, see the comments in each Dockerfile and configuration file.
- For more details on each service, refer to their respective documentation links above.
