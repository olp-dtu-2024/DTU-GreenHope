#!/bin/bash
set -e

export PGPASSWORD="$POSTGRESQL_PASSWORD"

until pg_isready -h localhost -p 5432 -U "$POSTGRESQL_USERNAME"; do
  echo "Waiting for PostgreSQL to be ready..."
  sleep 2
done

psql -h localhost \
     -U "$POSTGRESQL_USERNAME" \
     -d "$POSTGRESQL_DATABASE" \
     -f /docker-entrypoint-initdb.d/initialize-db.sql

echo "Database initialized successfully"
