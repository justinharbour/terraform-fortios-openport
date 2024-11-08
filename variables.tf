variable "fortios_hostname" {
  description = "The hostname or IP of the FortiOS firewall."
  type        = string
  
  validation {
    condition     = length(var.fortios_hostname) > 0
    error_message = "Hostname cannot be empty."
  }
}

variable "api_key" {
  description = "API key for authentication with the FortiOS firewall."
  type        = string
  sensitive   = true
  
  validation {
    condition     = length(var.api_key) > 0
    error_message = "API key cannot be empty."
  }
}

variable "policy_name" {
  description = "The name of the firewall policy."
  type        = string
  
  validation {
    condition     = length(var.policy_name) > 0
    error_message = "Policy name cannot be empty."
  }
}

variable "source_interface" {
  description = "The source interface for the policy."
  type        = string
  
  validation {
    condition     = length(var.source_interface) > 0
    error_message = "Source interface cannot be empty."
  }
}

variable "destination_interface" {
  description = "The destination interface for the policy."
  type        = string
  
  validation {
    condition     = length(var.destination_interface) > 0
    error_message = "Destination interface cannot be empty."
  }
}

variable "source_address" {
  description = "Source address for the firewall policy."
  type        = string
  
  validation {
    condition     = length(var.source_address) > 0
    error_message = "Source address cannot be empty."
  }
}

variable "destination_address" {
  description = "Destination address for the firewall policy."
  type        = string
  
  validation {
    condition     = length(var.destination_address) > 0
    error_message = "Destination address cannot be empty."
  }
}

variable "service_name" {
  description = "The service (protocol and port) to allow."
  type        = string
  
  validation {
    condition     = length(var.service_name) > 0
    error_message = "Service name cannot be empty."
  }
}