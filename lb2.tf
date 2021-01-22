resource "azurerm_lb" "user19-lb2" {
  name                    = "user19lb2"
  location                = azurerm_resource_group.user19-admin.location
  resource_group_name     = azurerm_resource_group.user19-admin.name
  
  frontend_ip_configuration {
    name                  = "user19PublicIPAddress2"
    public_ip_address_id   = azurerm_public_ip.user19-publicip2.id
  }
}
