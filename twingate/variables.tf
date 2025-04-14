variable "twingate_api_token" {
  type        = string
  description = "Twingate Account API Token"
  sensitive   = true
  default     = "null" # Replace this with your Twingate API Token
}

variable "twingate_network" {
  type        = string
  description = "Twingate Network ID"
  default     = "null" # Replace this with your Twingate Network ID
}
