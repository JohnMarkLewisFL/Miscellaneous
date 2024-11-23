# Updates and upgrades Debian

#!/bin/bash

# Check for Debian updates
sudo apt update -y

# Check for Debian upgrades
sudo apt upgrade -y

# Runs the "autoremove" command
sudo apt autoremove

# Runs the "clean" command
sudo apt clean