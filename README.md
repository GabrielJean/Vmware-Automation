# Home-Ansible
This is a simple repository where I will be storing my ansible & terraform files used to configure my HomeLab environment.

I'm using terraform to provision the virtual machines in my vSphere cluster.

They are all declared under **Terraform/Prod.tf** and are based off **Terraform/modules/Ubuntu 20.04/vm.tf**

Once they are created, Terraform executes the ansible script that was define with the **tag** variable and the vm is configured that way. 

## Configuration

All of this is very specific to my environment and honestly not really made to be used by someone else. I hope you can still use some of it.

### Terraform

* Go into the Terraform folder

* Run : cp ../provider.tf . 

* Configure your credentials in the file you just created

It's really important to secure that file and to not send it to a remote repository. (**Terraform/provider.tf** is in the .gitignore)

### Ansible
Ansible will try to gather it's inventory from vSphere itself, we need to configure that with the proper credentials too.

* Go into the Terraform folder

* Run : cp ../inv.vmware.yml . 

* Configure your credentials in the file you just created

Again, it's really important to secure that file and to not send it to a remote repository. (**Terraform/provider.tf** is in the .gitignore)

### Docker-Compose

## Todo
* CI/CD Pipeline to test and deploy automatically my changes
