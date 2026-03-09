#!/usr/bin/env bash
set -euo pipefail

echo "Starting all Docker Compose services..."

# Перебираем все файлы, которые начинаются на docker-compose. и заканчиваются на .yml
for file in docker-compose.*.yml; do
    if [ -f "$file" ]; then
        echo "======================================"
        echo "Starting $file..."
        docker compose -f "$file" up -d
    fi
done

echo "======================================"
echo "All services started successfully!"
