variable "rgmap"{}

resource "azurerm_resource_group" "azure-rg" {
    for_each = var.rgmap
    name     = each.value.resource_group_name
    location = each.value.location  
 }
