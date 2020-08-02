# module "Exemple" {
#   source = "./modules/Ubuntu 20.04/"
#   vsphere_virtual_machine_name = "Exemple"
#   vsphere_virtual_machine_ip = "10.0.0.25"
#   vsphere_virtual_machine_Datastore = "ehq01-DT"
#   vsphere_virtual_machine_ram = 1024
#   vsphere_virtual_machine_cpu = 1
# }

module "Nginx" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Nginx"
  vsphere_virtual_machine_network = "DMZ"
  vsphere_virtual_machine_ip = "10.0.100.30"
  vsphere_virtual_machine_Datastore = "FreeNAS-DT"
  vsphere_virtual_machine_ansiblegroup = "nginx"
  vsphere_virtual_machine_ram = 1024
  vsphere_virtual_machine_cpu = 1
}

module "Torrent" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Torrent"
  vsphere_virtual_machine_network = "VM Network"
  vsphere_virtual_machine_ip = "10.0.0.40"
  vsphere_virtual_machine_Datastore = "ehq01-DT"
  vsphere_virtual_machine_ansiblegroup = "docker"
  vsphere_virtual_machine_ram = 1024
  vsphere_virtual_machine_cpu = 2
}

module "Azure-Devops-Agent" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Azure-Devops-Agent"
  vsphere_virtual_machine_network = "VM Network"
  vsphere_virtual_machine_ip = "10.0.0.21"
  vsphere_virtual_machine_Datastore = "ehq01-DT"
  vsphere_virtual_machine_ansiblegroup = "base"
  vsphere_virtual_machine_ram = 1024
  vsphere_virtual_machine_cpu = 1
}

module "Bitwarden" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Bitwarden"
  vsphere_virtual_machine_network = "VM Network"
  vsphere_virtual_machine_ip = "10.0.0.31"
  vsphere_virtual_machine_Datastore = "FreeNAS-DT"
  vsphere_virtual_machine_ansiblegroup = "docker"
  vsphere_virtual_machine_ram = 4096
  vsphere_virtual_machine_cpu = 2
}
