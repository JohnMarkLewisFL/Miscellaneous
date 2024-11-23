#!/bin/bash

# After installing the Linux Dropbox client, this script can automatically sync folders of your choosing with their corresponding Dropbox folders (i.e. Documents)
# To sync multiple folders (i.e. Desktop, Documents, Pictures, etc.), copy/paste the rsync command and change the paths

# Set your source and destination paths for Dropbox sync
rsync -avh --progress --delete /source/path/here /Dropbox/path/here