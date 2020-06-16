# module "Exemple" {
#   source = "./modules/Ubuntu 20.04/"
#   vsphere_virtual_machine_name = "Exemple"
#   vsphere_virtual_machine_ip = "10.0.0.25"
#   vsphere_virtual_machine_Datastore = "ehq01-DT"
# }

module "Nginx" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Nginx"
  vsphere_virtual_machine_ip = "10.0.0.30"
  vsphere_virtual_machine_Datastore = "ehq01-DT"
  vsphere_virtual_machine_ansiblegroup = "nginx"
}