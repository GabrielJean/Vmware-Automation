module "vm1" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "vm1"
  vsphere_virtual_machine_ip = "10.0.0.51"
}

module "vm2" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "vm3"
  vsphere_virtual_machine_ip = "10.0.0.53"
}