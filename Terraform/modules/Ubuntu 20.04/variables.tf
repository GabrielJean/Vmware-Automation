variable "vsphere_virtual_machine_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "vsphere_virtual_machine_ip" {
  description = "Define Virtual Machine IP"
  type        = string
}

variable "vsphere_virtual_machine_Datastore" {
  description = "Define Virtual Machine Datastore"
  type        = string
}

variable "vsphere_virtual_machine_ansiblegroup" {
  description = "Define ansible group"
  type        = string
}

variable "vsphere_virtual_machine_cpu" {
  description = "Define amount of virtual cpu"
  type        = number
}

variable "vsphere_virtual_machine_ram" {
  description = "Define amount of ram"
  type        = number
}