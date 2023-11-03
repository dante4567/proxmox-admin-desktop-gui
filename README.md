# proxmox-admin-desktop-gui
adding on-demand desktop environment (XFCE) and additional services (Cockpit) to proxmox, plus remote servers (XRDP, VNC) - unsafe, pragmatic at best

I guess either cockpit or xfce would have been enough, i added a script for on-demand usage. I looked for something to manage my proxmox server in an easier way when working on the local PVE file system (e.g. in search for a conf file, manage services, logs, networks, and more.). I prefered a gui for that part, and a gui for this admin work on the pve itself is something the proxmox gui - understandably - doesn't offer and really is more of a hack for an individial with their own small homelab.

## cockpit
 Cockpit seemed like the more current Webmin, as a web-based interface for system administration for Linux server from a browser, eliminating the need for a full desktop GUI or direct access to the terminal. 

## 
 

## To use these scripts:

- Save each script to a file on your Proxmox server, for example, install-gui.sh for the installation script and disable-gui.sh for the disable script.

- Make each script executable with the command chmod +x install-gui.sh and chmod +x disable-gui.sh.

- Run the installation script with sudo ./install-gui.sh and the disable script with sudo ./disable-gui.sh when needed.

## caveat
Be sure to test these in a safe environment before considering to run them on a production system. Also, configure the VNC server according to your security needs. The script above *does not set it up with a password or secure configuration*. 
It's just installing the packages, and you'd need to follow up with proper configuration.


