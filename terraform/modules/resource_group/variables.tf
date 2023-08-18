variable "environment" {
  description = "The environment type we are running"
  validation {
    condition     = contains(["production", "development"], var.environment)
    error_message = "The environment must be one of [production, development]"
  }
}

variable "location" {
  default     = "West Europe"
  description = "The region to run things in"
}

variable "tags" {
  default     = {}
  description = "Map of tags to set on all resources"
}

variable "name" {
  description = "Resource group name"
}