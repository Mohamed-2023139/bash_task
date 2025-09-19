#!/bin/bash

# Database settings
USER="backupuser"
PASSWORD="StrongPassword123!"
DATABASE="testdb"
BACKUP_DIR="$HOME/mysql_backups"

# Create backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

# File name with today's date
FILE="$BACKUP_DIR/${DATABASE}_$(date +%F).sql"

# Run mysqldump to create backup
mysqldump -u "$USER" -p"$PASSWORD" "$DATABASE" > "$FILE"

# Check if backup succeeded
if [ $? -ne 0 ]; then
  echo "❌ Backup failed at $(date)" >> "$HOME/mysql_backup_error.log"
  exit 1
fi

# Delete backups older than 7 days
find "$BACKUP_DIR" -type f -name "*.sql" -mtime +7 -exec rm {} \;

echo "✅ Backup completed: $FILE"

