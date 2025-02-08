terraform {
  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = "2.2.0"
    }
  }
}

provider "azapi" {
  skip_provider_registration = true
  use_cli                    = true
  enable_preflight           = true # Preflight validation is a feature of the AzAPI provider that allows you to validate the configuration of your resources before applying changes
}
