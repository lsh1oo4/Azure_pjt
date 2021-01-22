resource "azurerm_lb" "user19-lb" {
  name                    = "user19lb"
  location                = azurerm_resource_group.user19-admin.location
  resource_group_name     = azurerm_resource_group.user19-admin.name
  
  frontend_ip_configuration {
    name                  = "user19PublicIPAddress"
    public_ip_address_id   = azurerm_public_ip.user19-publicip.id
  }
}
