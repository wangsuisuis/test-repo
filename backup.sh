

DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="./backups"
SOURCE_DIR="./data"

echo "Starting backup at $DATE"


mkdir -p $BACKUP_DIR


tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" $SOURCE_DIR 2>/dev/null || \
    echo "Warning: Source directory not found, creating empty backup"

echo "Backup completed: $BACKUP_DIR/backup_$DATE.tar.gz"