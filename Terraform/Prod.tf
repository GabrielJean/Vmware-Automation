module "Nginx" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Nginx"
  vsphere_virtual_machine_network = "DMZ"
  vsphere_virtual_machine_ip = "10.0.100.30"
  vsphere_virtual_machine_gw = "10.0.100.1"
  vsphere_virtual_machine_Datastore = "FreeNAS-DS"
  vsphere_virtual_machine_tag = "Nginx"
  vsphere_virtual_machine_ram = 1024
  vsphere_virtual_machine_cpu = 1
}

module "Torrent" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Torrent"
  vsphere_virtual_machine_network = "VM-Network"
  vsphere_virtual_machine_ip = "10.0.0.40"
  vsphere_virtual_machine_Datastore = "ehq01-DS"
  vsphere_virtual_machine_tag = "Docker"
  vsphere_virtual_machine_ram = 1024
  vsphere_virtual_machine_cpu = 2
}

module "Prometheus" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Prometheus"
  vsphere_virtual_machine_network = "VM-Network"
  vsphere_virtual_machine_ip = "10.0.0.21"
  vsphere_virtual_machine_Datastore = "ehq01-DS"
  vsphere_virtual_machine_ram = 2048
  vsphere_virtual_machine_cpu = 2
}

module "Azure-Devops-Agent" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Azure-Devops-Agent"
  vsphere_virtual_machine_network = "VM-Network"
  vsphere_virtual_machine_ip = "10.0.0.22"
  vsphere_virtual_machine_Datastore = "ehq02-DS"
  vsphere_virtual_machine_ram = 1024
  vsphere_virtual_machine_cpu = 1
}



module "Rancher" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Rancher"
  vsphere_virtual_machine_network = "VM-Network"
  vsphere_virtual_machine_ip = "10.0.0.70"
  vsphere_virtual_machine_Datastore = "ehq02-DS"
  vsphere_virtual_machine_tag = "Rancher"
  vsphere_virtual_machine_ram = 4096
  vsphere_virtual_machine_cpu = 2
}
module "Bitwarden" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Bitwarden"
  vsphere_virtual_machine_network = "VM-Network"
  vsphere_virtual_machine_ip = "10.0.0.31"
  vsphere_virtual_machine_Datastore = "ehq01-DS"
  vsphere_virtual_machine_tag = "Docker"
  vsphere_virtual_machine_ram = 4096
  vsphere_virtual_machine_cpu = 2
}
