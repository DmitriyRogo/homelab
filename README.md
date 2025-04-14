# Homelab Setup

Welcome to my personal homelab setup. I update this periodically as I deploy or update my stack. Feel free to poke around!

A big shoutout and thank you to [TechHut](https://www.youtube.com/@TechHut) for the format. A lot of this setup is inspired from his videos!

## Navigation

- [Apps](https://github.com/DmitriyRogo/homelab/tree/main/apps) - List of all the apps and services.
- [Home Assistant](https://github.com/DmitriyRogo/homelab/tree/main/homeassistant) - Smart home services and automation.
- [Proxy, DNS Management](https://github.com/DmitriyRogo/homelab/tree/main/proxy) - NGINX Proxy Manager, CloudFlare Domain Manager, PiHole, and more.

### Servers

#### Primary Machine (Proxmox)

This machine is running my Proxmox Server. Handling Docker, Home Assistant, and Monitoring applications.

- AMD Ryzen 7 5800X 8-Core, 16-Thread
- 16GB Corsair Vengeance DDR4 RAM
- Crucial P3 Plus 1TB NVMe M.2 SSD Drive
- Thermaltake Smart 500W 80+ White Certified PSU
- GIGABYTE B550M K Motherboard
- Radeon RX 580 8GB GPU

#### Raspberry Pi 4 (8GB RAM)

This machine is running Ubuntu 24.04.2 LTS Server. It's a dedicated PiHole server at this time.

### Networking

#### Ubiquiti Labs

- [AmpliFi HD WiFi System](https://a.co/d/09a9fPE)
- [NETGEAR 5-Port Gigabit Ethernet Unmanaged Switch](https://a.co/d/1zVNvw5)

### Additional Notes

#### Remote Access

I'm using [Twingate](https://www.twingate.com/) as my remote access tool to my Proxmox cluster when I'm away from home. They provide a Zero Trust Network Access (ZTNA) model, unlike convential VPNs that grant broad network access. They offer a free tier which is perfect for any homelab enthusiast.

I've deployed my configuration using their Terraform provider - you can find my config [here](https://github.com/DmitriyRogo/homelab/tree/main/twingate)

#### Homelab Helpful References / Images

- [Proxmox VE Helper-Scripts](https://tteck.github.io/Proxmox/)
- [Awesome-Selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted)
