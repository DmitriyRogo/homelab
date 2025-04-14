## Terraform Configuration
terraform {
  required_providers {
    twingate = {
      source = "Twingate/twingate"
    }
  }
}

## Provider Configuration
provider "twingate" {
  api_token = var.twingate_api_token
  network   = var.twingate_network
}

## Resource Creation
resource "twingate_remote_network" "homelab_network" {
  name = "homelab"
}

resource "twingate_resource" "example_resource" {
  name              = "your-resource"
  address           = "10.0.0.0" # Replace with your actual private IP or DNS name
  remote_network_id = twingate_remote_network.homelab_network.id
}

resource "twingate_connector" "homelab_network" {
  remote_network_id = twingate_remote_network.homelab_network.id
  name              = "homelab-connector"
}
