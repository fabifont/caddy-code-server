#!/bin/bash
echo "Allowing ssh connections on port 22"
ufw allow OpenSSH
echo "Enabling ufw"
ufw enable
echo "Opening port 80 - HTTP"
ufw allow http
echo "Opening port 443 - HTTPS"
ufw allow https
echo "Restarting ufw"
ufw disable
ufw enable