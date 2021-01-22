resource "azurerm_lb_probe" "user19-lb-probe2" {
    resource_group_name = azurerm_resource_group.user19-admin.name
    loadbalancer_id = azurerm_lb.user19-lb2.id
    name = "http-probe"
    protocol = "Http"
    request_path = "/"
    port = 80
}

