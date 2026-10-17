
#!/bin/bash
set -e

echo "Running custom PostgreSQL initialization..."

SQL_FILE="/opt/app-root/src/init/001-create-schema.sql"

if [ ! -f "$SQL_FILE" ]; then
    echo "ERROR: SQL file not found: $SQL_FILE"
    return 1
fi

psql -v ON_ERROR_STOP=1 \
    --username "$POSTGRESQL_USER" \
    --dbname "$POSTGRESQL_DATABASE" \
    --file "$SQL_FILE"

echo "Custom PostgreSQL initialization completed."
