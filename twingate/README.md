# Setting Up Twingate

This is an overview of my setup for Twingate to access my resources when I'm away from home.

This is done on Proxmox with an Ubunutu 24.04.2 LTS Server VM. I'm using this machine for most of my Terraform deployments to avoid storing my state file in a separate location.

## Navigation

- [Apps](https://github.com/DmitriyRogo/homelab/tree/main/apps) - List of all the apps and services.
- [Home Assistant](https://github.com/DmitriyRogo/homelab/tree/main/homeassistant) - Smart home services and automation.
- [Proxy, DNS Management](https://github.com/DmitriyRogo/homelab/tree/main/proxy) - NGINX Proxy Manager, CloudFlare Domain Manager, PiHole, and more.
- [Twingate](https://github.com/DmitriyRogo/homelab/tree/main/twingate) - Twingate setup for accessing resources from anywhere...

## Deploying the Terraform Configuration

Grab your API Token and Network Name and update the variables.tf

```
variable "twingate_api_token" {
  type        = string
  description = "Twingate Account API Token"
  default     = "null" # Replace this with your Twingate API Token
}

variable "twingate_network" {
  type        = string
  description = "Twingate Network ID"
  default     = "null" # Replace this with your Twingate Network ID
}
```

### Run the Terraform

After you've updated the variables, you can run the terraform workflow.

```
terraform init
terraform plan
terraform apply
```
