resource "azurerm_resource_group" "user19-admin" {
    name     = "user19resourcegroup"
    location = "koreacentral"

    tags = {
        environment = "Terraform Demo"
    }
}
