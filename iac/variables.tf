variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "East US 2"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "rg-iac-demo"
}

variable "static_web_app_name" {
  description = "The name of the Static Web App."
  type        = string
  default     = "swa-iac-demo"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
  default     = "asp-iac-demo"
}

variable "app_service_name" {
  description = "The name of the App Service."
  type        = string
  default     = "app-iac-demo"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
  default     = "acriacdemo123"
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
  default = {
    environment = "dev"
    project     = "iac-assignment"
  }
}
