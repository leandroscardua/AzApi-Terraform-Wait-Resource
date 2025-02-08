variable "rg_name" {
  type        = string
  default     = "rg_test_tags"
  description = "Name of the resource group"
}


data "azapi_client_config" "current" {
}

resource "azapi_resource" "create_rg" {
  type      = "Microsoft.Resources/tags@2021-04-01"
  name      = "default"
  parent_id = "/subscriptions/${data.azapi_client_config.current.subscription_id}/resourceGroups/${var.rg_name}"

  body = {
    properties = {
      tags = {
        Environment = "Test"
      }
    }
  }
  retry = {
    error_message_regex = [".*"] # Check for any error messages generated with regex .*
  }
  timeouts {
    create = "3m" # Wait 3 minutes before declaring it a failure.
  }
}
