@echo off
REM Listmonk CRM - Auto Deployment Script for Windows

echo 🚀 Starting Listmonk CRM Deployment...

REM Check if Docker is installed
docker --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Docker is not installed. Please install Docker first.
    pause
    exit /b 1
)

REM Check if Docker Compose is installed
docker-compose --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Docker Compose is not installed. Please install Docker Compose first.
    pause
    exit /b 1
)

REM Create uploads directory if it doesn't exist
if not exist uploads mkdir uploads

echo 📦 Pulling latest images...
docker-compose pull

echo 🔧 Starting containers...
docker-compose up -d

echo ⏳ Waiting for services to start...
timeout /t 10 /nobreak >nul

echo ✅ Deployment completed!
echo.
echo 🌐 Access your CRM at: http://localhost:9000
echo.
echo 📝 Next steps:
echo    1. Open http://localhost:9000 in your browser
echo    2. Create admin account on first visit
echo    3. Configure email settings
echo.
echo 🔍 Check status with: docker-compose ps
echo 📋 View logs with: docker-compose logs -f
echo.
pause
