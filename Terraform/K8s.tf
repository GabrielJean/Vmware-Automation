module "Rancher-Server" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "Rancher-Server"
  vsphere_virtual_machine_network = "VM Network"
  vsphere_virtual_machine_ip = "10.0.0.50"
  vsphere_virtual_machine_Datastore = "ehq02-DT"
  vsphere_virtual_machine_ansiblegroup = "docker"
  vsphere_virtual_machine_ram = 4096
  vsphere_virtual_machine_cpu = 2
}

module "K8s-Master" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "K8s-Master"
  vsphere_virtual_machine_network = "VM Network"
  vsphere_virtual_machine_ip = "10.0.0.59"
  vsphere_virtual_machine_Datastore = "ehq02-DT"
  vsphere_virtual_machine_ansiblegroup = "docker"
  vsphere_virtual_machine_ram = 2048
  vsphere_virtual_machine_cpu = 2
}

module "K8s-Worker-1" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "K8s-Worker-1"
  vsphere_virtual_machine_network = "VM Network"
  vsphere_virtual_machine_ip = "10.0.0.51"
  vsphere_virtual_machine_Datastore = "ehq01-DT"
  vsphere_virtual_machine_ansiblegroup = "docker"
  vsphere_virtual_machine_ram = 2048
  vsphere_virtual_machine_cpu = 2
}

module "K8s-Worker-2" {
  source = "./modules/Ubuntu 20.04/"
  vsphere_virtual_machine_name = "K8s-Worker-2"
  vsphere_virtual_machine_network = "VM Network"
  vsphere_virtual_machine_ip = "10.0.0.52"
  vsphere_virtual_machine_Datastore = "ehq02-DT"
  vsphere_virtual_machine_ansiblegroup = "docker"
  vsphere_virtual_machine_ram = 2048
  vsphere_virtual_machine_cpu = 2
}

