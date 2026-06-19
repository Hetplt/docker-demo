#!/bin/bash

echo "=============================="
echo "🐳 Docker Storage Report"
echo "=============================="

# Show usage
docker system df

echo ""
echo "=============================="
echo "📊 Disk Usage (Host)"
echo "=============================="

df -h

echo ""
echo "=============================="
echo "🧹 Cleaning Docker..."
echo "=============================="

# Remove stopped containers
docker container prune -f

# Remove unused images
docker image prune -a -f

# Remove unused networks
docker network prune -f

# Remove unused volumes (UNCOMMENT if needed)
# docker volume prune -f

echo ""
echo "=============================="
echo "✅ After Cleanup Report"
echo "=============================="

docker system df

echo ""
echo "🎉 Cleanup Completed Successfully!"
