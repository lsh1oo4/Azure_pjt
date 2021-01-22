resource "azurerm_virtual_network" "user19-vnet" {
	name 			= "user19-myVnet"
	address_space 		= ["19.0.0.0/16"]
	location 			= azurerm_resource_group.user19-admin.location
	resource_group_name	= azurerm_resource_group.user19-admin.name
}
