#!/bin/bash

# Backup Script: Compress a directory into .tar.gz

SRC="/home/rahul/mydata"       # Source directory (apna path dalna)
DEST="/home/rahul/backups"     # Backup location

DATE=$(date +%F_%H-%M-%S)      # Current date & time
FILENAME="backup_$DATE.tar.gz" # Backup filename

# Create destination folder if not exists
mkdir -p "$DEST"

# Create backup
tar -czf "$DEST/$FILENAME" "$SRC"

echo "Backup of $SRC completed successfully!"
echo "File saved as: $DEST/$FILENAME"
