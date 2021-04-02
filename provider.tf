provider "vsphere" {
  user           = ""
  password       = ""
  vsphere_server = ""

  # If you have a self-signed cert
  allow_unverified_ssl = true
}


terraform {
  backend "azurerm" {
    storage_account_name = "gterraform"
    container_name       = "tfstate"
    key                  = "home.terraform.tfstate"

    access_key = ""
  }
}

# terraform {
#   backend "kubernetes" {
#     secret_suffix    = "state"
#     load_config_file = true
#   }
# }