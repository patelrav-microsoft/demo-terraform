variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account (3-24 chars, lowercase alphanumeric)"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Storage account name must be 3-24 characters, lowercase alphanumeric."
  }
}

variable "app_service_plan_name" {
  description = "Name of the app service plan"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "app_service_plan_sku" {
  description = "SKU name for service plan (e.g., B1, P1v2, S1)"
  type        = string
  default     = "B1"
}

variable "app_service_plan_os_type" {
  description = "OS type for service plan (Linux or Windows)"
  type        = string
  default     = "Linux"
}