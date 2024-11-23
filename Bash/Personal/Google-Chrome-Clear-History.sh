#!/bin/bash

# This script will clear the browsing history and download history from Google Chrome

# Path to Google Chrome's user data directory
CHROME_USER_DATA_DIR="$HOME/.config/google-chrome/Default"

# Delete browsing history from the default profile
rm -f "$CHROME_USER_DATA_DIR/History"

# Deletes download history from the default profile
rm -f "$CHROME_USER_DATA_DIR/History-journal"

