# Homelab Applications

This page is for showcasing all the different applications I'm currently running.
Formatting of the readme inspired by [awesome-selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted).

## Navigation

- [**Apps**](https://github.com/DmitriyRogo/homelab/tree/main/apps) - List of all the apps and services.
- [Home Assistant](https://github.com/DmitriyRogo/homelab/tree/main/homeassistant) - Smart home services and automation.
- [Proxy, DNS Management](https://github.com/DmitriyRogo/homelab/tree/main/proxy) - NGINX Proxy Manager, CloudFlare Nanagement, PiHole, and more.
- [Twingate](https://github.com/DmitriyRogo/homelab/tree/main/twingate) - Twingate setup for accessing resources from anywhere...

### Portainer

![](https://github.com/DmitriyRogo/homelab/blob/main/apps/images/portainer.png)

I’m using Portainer for just about all my Docker deployments. While Proxmox does offer LXC containers, I've found that I've had better success using Docker. It allows me to deploy different services on the same IP using different ports.

**Resources:** [Video](https://www.youtube.com/watch?v=olUD_F37n0E) | [Github](https://github.com/portainer/portainer) | [Website](https://docs.portainer.io/start/install-ce)

### Home Assistant

![](https://github.com/DmitriyRogo/homelab/blob/main/apps/images/hass.png)

Home Assistant is a great tool that allows the connection of many devices in your smart home and integrate them together with a variety blueprints, automatons, and more. You can create custom dashboards, use their mobile app, and so much more I can’t even properly describe here how much this tool is capable of.

**Resources:** [Video](https://www.youtube.com/watch?v=Y8xY4keybnw) | [Github](https://github.com/home-assistant) | [Website](https://www.home-assistant.io/)

### Pi-Hole

![](https://github.com/DmitriyRogo/homelab/blob/main/apps/images/pihole.png)

By far the most popular “DNS Sinkhole” a Domain Name Service that blocks certain DNS inquires. In the case of Pi-Hole it uses black lists full of domains associated with advertisements and tracking.

**Resources:** [Video](https://www.youtube.com/watch?v=xtMFcVx3cHU) | [Github](https://github.com/pi-hole/pi-hole) | [Website](https://pi-hole.net/)

### NGINX Proxy Manager

![](https://github.com/DmitriyRogo/homelab/blob/main/apps/images/nginx.png)

NGINX Proxy Manager is a simple web based proxy manager for setting up and forwarding domain names to your services and generating SSL certifications. I use this primarily for local top level domains. In order to access these domains from outside my network, I use [Twingate](https://www.twingate.com/) a VPN tunnel to access my resources.

**Resources:** [Video](https://youtu.be/79e6KBYcVmQ?si=1h1daKy-0fZeiBtI) | [Github](https://github.com/NginxProxyManager/nginx-proxy-manager) | [Website](https://nginxproxymanager.com/)

### Twingate

Twingate is a tool for remotely connecting to your home server. It works by spinning up a smaller connector on your local network, then you use a client to establish a secure peer-to-peer connection. All this is managed and verified through the Twingate cloud platform. I'm currently using Terraform to manage my connections on my Primary Server and Raspberry Pi 4 Server.

**Resources:** [Video](https://www.youtube.com/watch?v=yaw2A3DG664) | [Website](https://www.twingate.com/)
