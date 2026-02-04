# Listmonk CRM - Production Build Package

## 🚀 Quick Deployment Instructions

### 📦 Package Contents:
- `docker-compose.yml` - Production Docker configuration
- `uploads/` - Upload directory (for media files)
- `README.md` - This file

### ⚡ One-Command Deployment:

```bash
# 1. Upload this entire folder to your server
# 2. Run this command on the server:
docker-compose up -d

# 3. Access your CRM at: http://your-domain.com
```

### 🔧 Server Requirements:
- Docker & Docker Compose
- Port 80 available
- At least 2GB RAM
- 10GB disk space

### 🌐 Access Information:
- **URL**: `http://your-domain.com` (no port needed)
- **Admin Setup**: Create on first visit
- **Default Database**: PostgreSQL (auto-configured)

### 📋 Deployment Steps:

1. **Upload Files**
   ```bash
   # Upload entire build folder to server
   # Navigate to the folder
   cd /path/to/build/folder
   ```

2. **Start Application**
   ```bash
   docker-compose up -d
   ```

3. **Check Status**
   ```bash
   docker-compose ps
   ```

4. **Access CRM**
   - Open browser: `http://your-domain.com`
   - Create admin account on first visit

### 🛠️ Configuration:
- **Database**: PostgreSQL (auto-setup)
- **Port**: 80 (direct web access)
- **Uploads**: Stored in `uploads/` folder
- **Data**: Persistent via Docker volumes

### 🔍 Troubleshooting:
```bash
# Check logs
docker-compose logs

# Restart services
docker-compose restart

# Stop services
docker-compose down
```

### 📞 Support:
- **GitHub**: https://github.com/pandvirpooja/listmonk
- **Documentation**: https://listmonk.app/docs

---
**Built with ❤️ - Ready for Production Deployment**
