data "vsphere_datacenter" "dc" {
  name = "Gwebs-DC"
}

data "vsphere_datastore" "datastore" {
  name          = "${var.vsphere_virtual_machine_Datastore}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_compute_cluster" "cluster" {
  name          = "Gwebs-CL"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_network" "network" {
  name          = "${var.vsphere_virtual_machine_network}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_virtual_machine" "template" {
  name          = "Ubuntu Server 20.04 Template"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

resource "vsphere_virtual_machine" "vm" {

  tags = ["${var.vsphere_virtual_machine_tag}"]


  lifecycle {
    ignore_changes = [clone]
  }

  provisioner "local-exec" {
    command = "ansible-inventory --list -i inv.vmware.yml > inv.json"
  }

  provisioner "local-exec" {
    command = "sleep 45 && ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inv.json -u ansible ../Ansible/Ubuntu-20.04/base.yml ../Ansible/Ubuntu-20.04/${var.vsphere_virtual_machine_tag}.yml"
  }


  name             = "${var.vsphere_virtual_machine_name}"
  resource_pool_id = "${data.vsphere_compute_cluster.cluster.resource_pool_id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"

  num_cpus = var.vsphere_virtual_machine_cpu
  cpu_hot_add_enabled = true
  cpu_hot_remove_enabled = true
  memory   = var.vsphere_virtual_machine_ram
  memory_hot_add_enabled = true
  guest_id = "${data.vsphere_virtual_machine.template.guest_id}"

  scsi_type = "${data.vsphere_virtual_machine.template.scsi_type}"

  network_interface {
    network_id   = "${data.vsphere_network.network.id}"
    adapter_type = "${data.vsphere_virtual_machine.template.network_interface_types[0]}"
  }

  disk {
    label            = "${var.vsphere_virtual_machine_name}.vmdk"
    size             = "${data.vsphere_virtual_machine.template.disks.0.size}"
    eagerly_scrub    = "${data.vsphere_virtual_machine.template.disks.0.eagerly_scrub}"
    thin_provisioned = "${data.vsphere_virtual_machine.template.disks.0.thin_provisioned}"
  }
  cdrom {
    client_device = true
  }

  clone {
    template_uuid = "${data.vsphere_virtual_machine.template.id}"

    customize {
      dns_server_list = ["10.0.0.4", "10.0.0.5"]
      linux_options {
        host_name = "${var.vsphere_virtual_machine_name}"
        domain    = "ad.gwebs.ca"
      }

      network_interface {
        ipv4_address = "${var.vsphere_virtual_machine_ip}"
        ipv4_netmask = 24
      }

      ipv4_gateway = "${var.vsphere_virtual_machine_gw}"
    }
  }
}
