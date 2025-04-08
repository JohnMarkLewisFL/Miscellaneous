#!/bin/sh

# Log file path
LOGFILE="/root/opkg-update.log"

echo "==== $(date) ====" >> $LOGFILE

# Update package lists
opkg update >> $LOGFILE 2>&1

# Upgrade installed packages
opkg list-upgradable | cut -f1 -d' ' | while read -r pkg; do
    echo "Upgrading $pkg..." >> $LOGFILE
    opkg upgrade "$pkg" >> $LOGFILE 2>&1
done

echo "Done." >> $LOGFILE