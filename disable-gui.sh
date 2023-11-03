#!/bin/bash
# Run this script as root or with sudo privileges

# Stop Cockpit
systemctl disable --now cockpit.socket

# Stop XRDP
systemctl disable --now xrdp

# Print status of services to confirm they are stopped and disabled
systemctl status cockpit.socket xrdp
