#!/bin/bash

# Listmonk CRM - Auto Deployment Script
echo "🚀 Starting Listmonk CRM Deployment..."

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

# Create uploads directory if it doesn't exist
mkdir -p uploads

# Set permissions
chmod 755 uploads

echo "📦 Pulling latest images..."
docker-compose pull

echo "🔧 Starting containers..."
docker-compose up -d

echo "⏳ Waiting for services to start..."
sleep 10

# Check if containers are running
if docker-compose ps | grep -q "Up"; then
    echo "✅ Deployment successful!"
    echo ""
    echo "🌐 Access your CRM at:"
    echo "   http://$(curl -s ifconfig.me):9000"
    echo ""
    echo "📝 Next steps:"
    echo "   1. Open the URL in your browser"
    echo "   2. Create admin account on first visit"
    echo "   3. Configure email settings"
    echo ""
    echo "🔍 Check status with: docker-compose ps"
    echo "📋 View logs with: docker-compose logs -f"
else
    echo "❌ Deployment failed. Check logs:"
    docker-compose logs
fi
