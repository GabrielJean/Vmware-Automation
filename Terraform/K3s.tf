module "K3s-Master-1" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "K3s-Master-1"
  vsphere_virtual_machine_network = "APP"
  vsphere_virtual_machine_ip = "10.0.30.51"
  vsphere_virtual_machine_gw = "10.0.30.1"
  vsphere_virtual_machine_Datastore = "ehq01-DS"
  vsphere_virtual_machine_tag = "K3s-Master-init"
  vsphere_virtual_machine_ram = 1024
  vsphere_virtual_machine_cpu = 2
}

module "K3s-Master-2" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "K3s-Master-2"
  vsphere_virtual_machine_network = "APP"
  vsphere_virtual_machine_ip = "10.0.30.52"
  vsphere_virtual_machine_gw = "10.0.30.1"
  vsphere_virtual_machine_Datastore = "ehq02-DS"
  vsphere_virtual_machine_tag = "K3s-Master-join"
  vsphere_virtual_machine_ram = 1024
  vsphere_virtual_machine_cpu = 2

  depends_on = [
    module.K3s-Master-1
  ]
}

# module "K3s-Master-3" {
#   source = "./modules/Ubuntu 20.04/"
#   vsphere_virtual_machine_name = "K3s-Master-3"
#   vsphere_virtual_machine_network = "APP"
#   vsphere_virtual_machine_ip = "10.0.30.53"
#   vsphere_virtual_machine_gw = "10.0.30.1"
#   vsphere_virtual_machine_Datastore = "ehq03-DS"
#   vsphere_virtual_machine_tag = "K3s-Master-join"
#   vsphere_virtual_machine_ram = 1024
#   vsphere_virtual_machine_cpu = 2

  # depends_on = [
  #   module.K3s-Master-1
  # ]

# }


module "K3s-Worker-1" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "K3s-Worker-1"
  vsphere_virtual_machine_network = "APP"
  vsphere_virtual_machine_ip = "10.0.30.55"
  vsphere_virtual_machine_gw = "10.0.30.1"
  vsphere_virtual_machine_Datastore = "ehq01-DS"
  vsphere_virtual_machine_tag = "K3s-Worker-join"
  vsphere_virtual_machine_ram = 8192
  vsphere_virtual_machine_cpu = 3

  depends_on = [
    module.K3s-Master-1
  ]
}

# module "K3s-Worker-2" {
#   source = "./modules/Ubuntu 20.04/"
#   vsphere_virtual_machine_name = "K3s-Worker-2"
#   vsphere_virtual_machine_network = "APP"
#   vsphere_virtual_machine_ip = "10.0.30.56"
#   vsphere_virtual_machine_gw = "10.0.30.1"
#   vsphere_virtual_machine_Datastore = "ehq02-DS"
#   vsphere_virtual_machine_tag = "K3s-Worker-join"
#   vsphere_virtual_machine_ram = 8192
#   vsphere_virtual_machine_cpu = 3

#   depends_on = [
#     module.K3s-Master-1
#   ]
# }