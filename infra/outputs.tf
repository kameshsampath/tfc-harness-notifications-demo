output "gcp_region" {
  value       = var.gcp_region
  description = "Google Cloud Region"
}

output "gcp_project" {
  value       = var.gcp_project
  description = "Google Cloud Project ID"
  sensitive   = true
}

output "zone" {
  value       = local.google_zone
  description = "VM Instance Zone"
}

output "delegate_vm_name" {
  value       = var.vm_name
  description = "The Harness Delegate GCE VM Name"
}

output "delegate_name" {
  value       = var.harness_delegate_name
  description = "The Harness Delegate Name"
}

output "vm_ssh_user" {
  value       = var.vm_ssh_user
  description = "The SSH username to login into VM"
  sensitive   = true
}

output "vm_external_ip" {
  value       = google_compute_instance.delegate_vm.network_interface.0.access_config.0.nat_ip
  description = "The external IP to access the VM"
}

output "pool_name" {
  value       = var.drone_builder_pool_name
  description = "The drone builder VM pool name"
}

output "drone_runne_zone" {
  value       = local.runner_zone
  description = "The Google Clound zone where runners will be provisioned and run"
}
