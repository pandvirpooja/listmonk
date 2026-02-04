# Listmonk CRM - Deployment Package

## 🚀 Quick Deployment Instructions

This package contains everything needed to deploy Listmonk CRM on a live server.

### 📁 Package Contents:
- `docker-compose.yml` - Docker configuration
- `config.toml.sample` - Sample configuration
- `uploads/` - Upload directory (create if needed)
- `README-DEPLOY.md` - This file

### ⚡ One-Command Deployment:

```bash
# 1. Upload this entire folder to your server
# 2. Run this command on the server:
docker compose up -d

# 3. Access your CRM at: http://your-server-ip:9000
```

### 🔧 Server Requirements:
- Docker & Docker Compose
- Port 9000 available
- At least 2GB RAM
- 10GB disk space

### 📝 Configuration:
Edit `config.toml` (optional) or use environment variables in `docker-compose.yml`

### 🌐 Access:
- Default URL: `http://your-server-ip:9000`
- Admin setup: Create on first visit

### 📞 Support:
- GitHub: https://github.com/pandvirpooja/listmonk
- Documentation: https://listmonk.app/docs

---
**Deployed with ❤️ using Listmonk CRM**
