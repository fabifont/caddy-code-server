# caddy-code-server

# Config

## Firewall (for VPS)
1. Install `ufw`
2. Run `yes Y | bash firewall.sh`

## DDNS (dyndns.it)
1. Install ddclient (Ignore automatic configuration)
2. Edit `/etc/ddclient.conf` using this format:
```
protocol=dyndns2
use=web, web=checkip.dyndns.it
server=update.dyndns.it
login=youruser
password=yourpass
yourdomain
```
3. Install Systemd unit (automatic DDNS renewal at startup): `cp systemd/updateDNS.service /etc/systemd/system`
4. Enable the Systemd unit: `systemctl enable --now updateDNS`

## ENV variables
Create `.env` with:
```
PASSWORD=yourpassword
SUDO_PASSWORD=yoursudopassword
DOMAIN=yourdomain
```

## Caddyfile
Replace `yourdomain`.

# Run
`docker-compose up -d`

# Info
Your files are saved into that container path: `/config/workspace`
