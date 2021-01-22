resource "azurerm_virtual_network_peering" "user19_peer1" {
  name                      = "peer1to2"
  resource_group_name       = azurerm_resource_group.user19-admin.name
  virtual_network_name      = azurerm_virtual_network.user19-vnet.name
  remote_virtual_network_id = azurerm_virtual_network.user19-vnet2.id
}

resource "azurerm_virtual_network_peering" "user19_peer2" {
  name                      = "peer2to1"
  resource_group_name       = azurerm_resource_group.user19-admin.name
  virtual_network_name      = azurerm_virtual_network.user19-vnet2.name
  remote_virtual_network_id = azurerm_virtual_network.user19-vnet.id
}
