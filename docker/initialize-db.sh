#!/bin/bash
chmod +x initialize-db.sh
set -e

# Đợi PostgreSQL khởi động
until pg_isready -h localhost -p 5432 -U postgres; do
    echo "Waiting for PostgreSQL to be ready..."
    sleep 2
done

# Thêm một khoảng thời gian chờ ngắn
sleep 5

echo "Initializing database..."
PGPASSWORD=postgres psql -h localhost -U postgres -d nocobase -f /docker-entrypoint-initdb.d/initialize-db.sql

echo "Database initialized successfully"
