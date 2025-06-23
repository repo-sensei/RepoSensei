# RepoSensei

A comprehensive repository analysis and developer productivity platform.

## Quick Start with Docker

### Prerequisites
- Docker and Docker Compose installed
- Supabase account and project
- GitHub personal access token

### Setup

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd reposensei
   ```

2. **Create environment file**
   ```bash
   cp env.example .env
   ```
   
   Edit `.env` and add your actual values:
   ```
   SUPABASE_URL=https://your-project.supabase.co
   SUPABASE_ANON_KEY=your_anon_key
   SUPABASE_SERVICE_ROLE_KEY=your_service_role_key
   GITHUB_TOKEN=your_github_token
   ```

3. **Start the application**
   ```bash
   # On Linux/Mac:
   ./start.sh
   
   # On Windows:
   docker-compose up --build -d
   ```

4. **Access the application**
   - Frontend: http://localhost:5173
   - Backend API: http://localhost:3000
   - Python Backend: http://localhost:5005

### Services

- **Frontend**: React/Vite application served by Nginx
- **Backend**: Node.js Express API
- **Python Backend**: FastAPI service for AI/ML features
- **MongoDB**: Database for storing repository data

### Useful Commands

```bash
# View logs
docker-compose logs -f

# Stop services
docker-compose down

# Rebuild and restart
docker-compose up --build -d

# View running containers
docker-compose ps
```

## Development

For local development without Docker, see individual service READMEs in their respective directories.

## 🐳 Running with Docker

This project is fully containerized for a seamless, dependency-free setup. All services are orchestrated via Docker Compose, with strict versioning and secure secret management.

### **Project-Specific Docker Requirements**
- **Node.js Version:** 22.13.1 (for all Node-based services)
- **Python Version:** 3.11 (for Python backend)
- **MongoDB:** 7.0 (official image)
- **Nginx:** Alpine (for frontend static serving)

### **Required Environment Variables & Secrets**
- Each service loads its environment variables from its respective `.env` file (see `env_file` in `docker-compose.yml`).
- **Secrets** (required for full functionality):
  - Place the following files in the `secrets/` directory:
    - `supabase_url.txt`
    - `supabase_anon_key.txt`
    - `supabase_service_role_key.txt`
    - `github_token.txt`
- Use the provided `setup-secrets.sh` script to generate and configure secrets interactively.

### **Build & Run Instructions**
```bash
# 1. Clone the repository and enter the directory
# 2. Set up secrets (interactive)
chmod +x setup-secrets.sh
./setup-secrets.sh

# 3. Build and start all services
# (Rebuilds images and starts containers)
docker-compose up --build
```

### **Service Ports**
| Service                              | Port(s)   | Description                |
|--------------------------------------|-----------|----------------------------|
| Frontend (React/Vite + Nginx)        | 5173      | User interface             |
| Backend (Node.js/Express)            | 3000      | API server                 |
| Python Backend (FastAPI)             | 5005      | AI/ML services             |
| MongoDB                              | 27017     | Local database             |
| AI Pair Programming Backend (Node.js) | 3001,3002 | AI pair programming APIs   |
| AI Pair Programming Frontend (Vite)  | 4173      | AI pair programming UI     |

### **Special Configuration**
- **Secrets are injected at runtime**—never baked into images.
- **Frontend containers** use runtime secret injection to replace placeholders in built JS files.
- **All containers run as non-root users** for enhanced security.
- **Persistent MongoDB data** is stored in a Docker volume (`mongodb_data`).
- **All services are networked via the `appnet` bridge** for secure internal communication.

> **Note:** For local development, no global Node.js, Python, or MongoDB installation is required. All dependencies are managed within containers.

---
