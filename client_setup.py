#! /bin/python3

import os
import shutil
import apt
import sys

def is_ansible_installed():
    output = shutil.which("ansible")
    if output is None:
        rep = input("Ansible is not installed, do you want to install it? (y/n): ")

        if rep == "y":
            os.system("sudo apt install ansible")
        else:
            sys.exit()

def configure_vmware_module():
    present = False
    with open("/etc/ansible/ansible.cfg") as in_file:
        buf = in_file.readlines()

    with open("/etc/ansible/ansible.cfg", "w") as out_file:
        for line in buf:
            if line == "enable_plugins = vmware_vm_inventory\n":
                print("Already there")
                present = True
                
        for line in buf:
            if present != True:
                if line == "[inventory]\n":
                    line = line + "enable_plugins = vmware_vm_inventory\n"
            out_file.write(line)

def configure_credentials():
    if os.path.exists("Terraform/provider.tf") is False:
        shutil.copyfile("provider.tf", "Terraform/provider.tf")
    if os.path.exists("Terraform/inv.vmware.yml") is False:
        shutil.copyfile("inv.vmware.yml", "Terraform/inv.vmware.yml")

#TODO: ADD CREDENTIALS to files

if __name__ == "__main__":
    # is_ansible_installed()
    # configure_vmware_module()
    configure_credentials()