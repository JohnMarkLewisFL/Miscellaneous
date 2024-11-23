# Updates and upgrades Fedora

#!/bin/bash

# Check for Fedora updates
sudo dnf update -y

# Check for Fedora upgrades
sudo dnf upgrade --refresh -y
