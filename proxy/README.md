# Setting Up NGINX Proxy Manager

This is an overview of my setup for setting up local domain names, creating SSL certificates, and connecting to them via Twingate.

This is done on Proxmox with an LXC running Docker, which I interact with using Portainer.

## Navigation

- [Apps](https://github.com/DmitriyRogo/homelab/tree/main/apps) - List of all the apps and services.
- [Home Assistant](https://github.com/DmitriyRogo/homelab/tree/main/homeassistant) - Smart home services and automation.
- [Proxy, DNS Management](https://github.com/DmitriyRogo/homelab/tree/main/proxy) - NGINX Proxy Manager, CloudFlare Domain Manager, PiHole, and more.
- [Twingate](https://github.com/DmitriyRogo/homelab/tree/main/twingate) - Twingate setup for accessing resources from anywhere...

## Installing NGINX Proxy Manager

This is done with the [Docker Compose file](https://github.com/DmitriyRogo/homelab/blob/main/proxy/compose.yaml) within this repository. There are changes to some of the external ports to access 80, 443, and the GUI for NGINX Proxy Manager as well as placing the storage within [volumes](https://docs.docker.com/engine/storage/volumes/). Please change these as needed or use the [official compose file](https://github.com/NginxProxyManager/nginx-proxy-manager) as seen below.

### NGINX Proxy Manager Compose (customized)

```
services:
  proxy:
    image: 'jc21/nginx-proxy-manager:latest'
    container_name: nginx-proxy-manager
    restart: unless-stopped
    network_mode: host
    volumes:
      - proxy-data:/data
      - proxy-letsencrypt:/etc/letsencrypt
    healthcheck:
      test: ["CMD", "/usr/bin/check-health"]
      interval: 10s
      timeout: 3s
volumes:
  proxy-data:
  proxy-letsencrypt:
```

This is setup as a host network to allow localhost and local networking connections without needing to add ports for all the services to the container.

_Below is a basic compose template from NGINX if you don't want to use [mine](https://github.com/TechHutTV/homelab/blob/main/proxy/compose.yaml)._

#### Official Compose from NginxProxyManager/nginx-proxy-manager

Checkout the [quick setup](https://github.com/NginxProxyManager/nginx-proxy-manager?tab=readme-ov-file#quick-setup) section in their official repo.

```
services:
  app:
    image: 'docker.io/jc21/nginx-proxy-manager:latest'
    restart: unless-stopped
    ports:
      - '80:80'
      - '81:81'
      - '443:443'
    volumes:
      - ./data:/data
      - ./letsencrypt:/etc/letsencrypt
```
