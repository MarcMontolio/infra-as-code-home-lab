terraform {
  required_version = ">= 1.0.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {}

# Simulate a network using a null_resource
resource "null_resource" "network" {
  triggers = {
    cidr = var.network_cidr
  }
}

# Simulate VM creation—one null_resource per VM
resource "null_resource" "vms" {
  count = var.vm_count
  triggers = {
    vm_id = count.index
  }
}

output "network_cidr" {
  value = null_resource.network.triggers["cidr"]
}

output "vm_ids" {
  value = [for r in null_resource.vms : r.triggers["vm_id"]]
}
