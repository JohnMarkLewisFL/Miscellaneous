# Updates and upgrades Red Hat

#!/bin/bash

# Check for Red Hat updates
sudo dnf update -y

# Check for Red Hat upgrades
sudo dnf upgrade --refresh -y
