# Proxmox is based on Debian, but needs the "dist-upgrade" command to be run instead of "upgrade"

#!/bin/bash

# Check for Debian updates
apt update -y

# Check for Debian upgrades
apt dist-upgrade -y

# Runs the "autoremove" command
apt autoremove

# Runs the "clean" command
apt clean

# Removes the nag message
sed -Ezi.bak "s/(function\(orig_cmd\) \{)/\1\n\torig_cmd\(\);\n\treturn;/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js && systemctl restart pveproxy.service