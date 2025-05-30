output "network_cidr" {
  description = "CIDR block passed to the fake network resource"
  value       = null_resource.network.triggers["cidr"]
}

output "vm_ids" {
  description = "Simulated VM IDs (just count indexes)"
  value       = [for r in null_resource.vms : r.triggers["vm_id"]]
}
