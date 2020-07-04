provider "vsphere" {
  user           = ""
  password       = ""
  vsphere_server = ""

  # If you have a self-signed cert
  allow_unverified_ssl = true
}


terraform {
  backend "azurerm" {
    resource_group_name  = "gj-storage-rg"
    storage_account_name = "gjstoragehot"
    container_name       = "tfstate"
    key                  = ""
  }
}

