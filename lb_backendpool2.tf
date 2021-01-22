resource "azurerm_lb_backend_address_pool" "user19-bpepool2" {
    name = "user19-BackEndAddressPool2"
    resource_group_name = azurerm_resource_group.user19-admin.name
    loadbalancer_id     = azurerm_lb.user19-lb2.id
}
