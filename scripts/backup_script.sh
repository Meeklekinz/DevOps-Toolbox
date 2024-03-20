#!/bin/bash

# Define MySQL credentials and database name
DB_USER="your_username"
DB_PASSWORD="your_password"
DB_NAME="your_database"

# Define backup directory and file
BACKUP_DIR="/path/to/backup/directory"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +"%Y%m%d_%H%M%S").sql"

# Check if backup directory exists, create it if not
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
fi

# Perform database backup
echo "Backing up database $DB_NAME..."
mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_FILE"

# Check if backup was successful
if [ $? -eq 0 ]; then
  echo "Backup completed successfully: $BACKUP_FILE"
else
  echo "Backup failed. Please check the error message."
fi