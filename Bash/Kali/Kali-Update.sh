# Updates and upgrades Kali

#!/bin/bash

# Check for Kali updates
sudo apt update -y

# Check for Kali upgrades
sudo apt upgrade -y

# Runs the "autoremove" command
sudo apt autoremove

# Runs the "clean" command
sudo apt clean