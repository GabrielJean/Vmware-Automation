variable "vsphere_virtual_machine_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "vsphere_virtual_machine_ip" {
  description = "Define Virtual Machine IP"
  type        = string
}

variable "vsphere_virtual_machine_gw" {
  description = "Define Virtual Machine Gateway"
  type        = string
  default     = "10.0.0.1"
}


variable "vsphere_virtual_machine_network" {
  description = "Define Virtual Machine Network"
  type        = string
  default     = "VM-Network"
}

variable "vsphere_virtual_machine_Datastore" {
  description = "Define Virtual Machine Datastore"
  type        = string
}

variable "vsphere_virtual_machine_tag" {
  description = "Define ansible group"
  type        = string
  default     = "Base"
}

variable "vsphere_virtual_machine_cpu" {
  description = "Define amount of virtual cpu"
  type        = number
  default     = 1
}

variable "vsphere_virtual_machine_ram" {
  description = "Define amount of ram"
  type        = number
  default     = 1024
}