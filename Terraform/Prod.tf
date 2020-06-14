module "Automation" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Automation"
  vsphere_virtual_machine_ip = "10.0.0.25"
}