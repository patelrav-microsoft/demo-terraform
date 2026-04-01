terraform {
  backend "azurerm" {
    resource_group_name  = "demo-fordrg-1"
    storage_account_name = "demofordsgacc123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_azuread_auth     = true
    use_oidc             = true
  }
}