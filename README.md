# docker-labs

Docker and Docker Compose labs for DevOps and SRE practice.

## Labs

### lab-compose
Multi-container stack with Nginx and PostgreSQL 15.
Demonstrates service discovery via Docker internal DNS,
environment-based configuration, and container networking.

Services:
  - web: Nginx on port 8080
  - db: PostgreSQL 15 (internal only, port not exposed)

Usage:
  docker compose up -d
  docker compose ps
  docker compose down
