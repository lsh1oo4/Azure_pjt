resource "azurerm_lb_rule" "lbnatrule" {
    resource_group_name = azurerm_resource_group.user19-admin.name
    loadbalancer_id = azurerm_lb.user19-lb.id
    name = "http"
    protocol = "Tcp"
    frontend_port = 80
    backend_port = 80
    backend_address_pool_id = azurerm_lb_backend_address_pool.user19-bpepool.id
    frontend_ip_configuration_name = "user19PublicIPAddress"
    probe_id = azurerm_lb_probe.user19-lb-probe.id
}
