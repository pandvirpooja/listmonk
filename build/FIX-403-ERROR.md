# 🚀 403 Error Fix - Step by Step Solution

## Problem: 403 Forbidden Error
Your server shows 403 error because port 9000 is blocked by web server configuration.

## ✅ SOLUTION: Use Fixed Docker Configuration

### Step 1: Replace Your Docker Compose File
On your server, replace `docker-compose.yml` with `docker-compose-fixed.yml`:

```bash
# Backup original file
mv docker-compose.yml docker-compose-backup.yml

# Use fixed version
mv docker-compose-fixed.yml docker-compose.yml
```

### Step 2: Restart Containers
```bash
# Stop existing containers
docker-compose down

# Start with new configuration
docker-compose up -d

# Check status
docker-compose ps
```

### Step 3: Test Access
Now access your CRM at:
- **http://digitalmeliora.thesmartbox.online** (no port needed!)
- **http://your-server-ip** (no port needed!)

### Step 4: If Still Issues - Alternative Solutions

#### Option A: Web Server Proxy (Apache)
```bash
# Create Apache config
sudo tee /etc/apache2/sites-available/listmonk.conf > /dev/null <<EOF
<VirtualHost *:80>
    ServerName digitalmeliora.thesmartbox.online
    ProxyPreserveHost On
    ProxyPass / http://localhost:9000/
    ProxyPassReverse / http://localhost:9000/
</VirtualHost>
EOF

# Enable and restart
sudo a2enmod proxy proxy_http
sudo a2ensite listmonk
sudo systemctl restart apache2
```

#### Option B: Web Server Proxy (Nginx)
```bash
# Create Nginx config
sudo tee /etc/nginx/sites-available/listmonk > /dev/null <<EOF
server {
    listen 80;
    server_name digitalmeliora.thesmartbox.online;
    
    location / {
        proxy_pass http://localhost:9000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOF

# Enable and restart
sudo ln -s /etc/nginx/sites-available/listmonk /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl restart nginx
```

### Step 5: Firewall Fix
```bash
# Allow HTTP traffic
sudo ufw allow 80
sudo ufw allow 443
sudo ufw reload
```

## 🎯 Why This Works

The fixed configuration:
- Exposes port 80 directly (bypasses 403 errors)
- Simplified setup (no complex web server config needed)
- Production ready
- Maintains all functionality

## 📞 Debug Commands
If still issues, run these and send output:
```bash
docker-compose ps
docker-compose logs
netstat -tlnp | grep 80
curl http://localhost
```

## ✅ Expected Result
After applying the fix, you should see your Listmonk CRM at:
**http://digitalmeliora.thesmartbox.online**

No more 403 errors! 🎉
