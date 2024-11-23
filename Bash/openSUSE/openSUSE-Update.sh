# Updates and upgrades openSUSE

#!/bin/bash

# Refresh zypper
sudo zypper refresh

# Check for openSUSE updates
sudo zypper up -y

# Check for openSUSE upgrades
sudo zypper dup -y