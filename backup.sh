#!/bin/sh

DirToBackup=/home/sep/sep-network-disk
DOW=$(date +"%a")
BackupDir=/mnt/$DOW
BackupDir2=/mnt2/$DOW
LogFile=/mnt/backup_logs/backup-$(date "+%Y-%m-%d %H:%M:%S").log
LogFile=/mnt2/backup_logs/backup-$(date "+%Y-%m-%d %H:%M:%S").log


rsync --recursive --update --delete --perms --owner --group --times \
 --links --safe-links --one-file-system --devices --log-file="$LogFile" $DirToBackup $BackupDir

rsync --recursive --update --delete --perms --owner --group --times \
 --links --safe-links --one-file-system --devices --log-file="$LogFile" $DirToBackup $BackupDir2
