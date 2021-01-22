resource "azurerm_subnet" "user19-subnet2" {
    name = "user19-mysubnet2"
    resource_group_name = azurerm_resource_group.user19-admin.name
    virtual_network_name = azurerm_virtual_network.user19-vnet2.name
    address_prefixes = ["119.0.1.0/24"]
}
