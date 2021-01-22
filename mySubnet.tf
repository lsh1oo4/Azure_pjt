resource "azurerm_subnet" "user19-subnet1" {
    name = "user19-mysubnet1"
    resource_group_name = azurerm_resource_group.user19-admin.name
    virtual_network_name = azurerm_virtual_network.user19-vnet.name
    address_prefixes = ["19.0.1.0/24"]
}
