variable "project" {
  description = "Project name"
  type        = string
  default     = "home-lab"
}

variable "region" {
  description = "Deployment region (or just 'local' for non-cloud)"
  type        = string
  default     = "local"
}

variable "network_cidr" {
  description = "CIDR block for your lab network"
  type        = string
  default     = "192.168.50.0/24"
}

variable "vm_count" {
  description = "How many VMs to spin up"
  type        = number
  default     = 2
}
