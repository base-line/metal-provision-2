// device with user data

output "access_private_ipv4_userdata" {
  description = "private ipv4"
  value       = module.device_user_data.access_private_ipv4
}

output "access_public_ipv4_userdata" {
  description = "public ipv4"
  value       = module.device_user_data.access_public_ipv4
}

output "access_public_ipv6_userdata" {
  description = "public ipv6"
  value       = module.device_user_data.access_public_ipv6
}

output "created_userdata" {
  description = "when it was created"
  value       = module.device_user_data.created
}

output "hostname_userdata" {
  description = "hostname"
  value       = module.device_user_data.hostname
}

output "id_userdata" {
  description = "device id"
  value       = module.device_user_data.id
}

output "operating_system_userdata" {
  description = "device os"
  value       = module.device_user_data.operating_system
}

output "ssh_key_ids_userdata" {
  description = "device ssh key"
  value       = module.device_user_data.ssh_key_ids
}

output "root_password_userdata" {
  description = "device root password"
  value       = module.device_user_data.root_password
  sensitive   = true
}

output "state_userdata" {
  description = "device state"
  value       = module.device_user_data.state
}
