resource "azurerm_virtual_network" "user19-vnet2" {
	name 			= "user19-myVnet2"
	address_space 		= ["119.0.0.0/16"]
	location 			= azurerm_resource_group.user19-admin.location
	resource_group_name	= azurerm_resource_group.user19-admin.name
}
