terraform {
  required_version = ">= 0.13.0"
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
      version = ">= 1.16.0"
    }
  }
}

resource "fortios_firewall_policy" "allow_port" {
  name              = var.policy_name
  srcintf {
    name = var.source_interface
  }
  dstintf {
    name = var.destination_interface
  }
  srcaddr {
    name = var.source_address
  }
  dstaddr {
    name = var.destination_address
  }
  
  action           = "accept"
  schedule         = "always"
  service {
    name = var.service_name
  }
  
  logtraffic       = "all"
  
  lifecycle {
    create_before_destroy = true
  }
}