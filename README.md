# AzApi-Terraform-Wait-Resource

## This is an example of how to wait for a resource to become available before initiating changes to it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | 2.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azapi"></a> [azapi](#provider\_azapi) | 2.2.0 |


## Resources

| Name | Type |
|------|------|
| [azapi_resource.create_rg](https://registry.terraform.io/providers/Azure/azapi/2.2.0/docs/resources/resource) | resource |
| [azapi_client_config.current](https://registry.terraform.io/providers/Azure/azapi/2.2.0/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Name of the resource group | `string` | `"rg_test_tags"` | no |
