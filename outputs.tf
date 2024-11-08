output "policy_id" {
  description = "The ID of the created firewall policy."
  value       = fortios_firewall_policy.allow_port.id
}

output "policy_name" {
  description = "The name of the created firewall policy."
  value       = fortios_firewall_policy.allow_port.name
}