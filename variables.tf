variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "Environment name (e.g., dev, prod)"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_space" {
  description = "Subnet address prefixes"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
