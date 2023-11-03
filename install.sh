#!/bin/bash
# Run this script as root or with sudo privileges

# Update your package list
apt update

# Install Cockpit
apt install -y cockpit

# Install XFCE4 Desktop Environment
apt install -y xfce4 xfce4-goodies

# Install XRDP for remote desktop access
apt install -y xrdp

# Configure XRDP to use XFCE4
echo "startxfce4" > /etc/xrdp/startwm.sh

# Install VNC Server
apt install -y tigervnc-standalone-server tigervnc-common

# Start and enable Cockpit
systemctl enable --now cockpit.socket

# Start and enable XRDP
systemctl enable --now xrdp

# Print status of services
systemctl status cockpit.socket xrdp
