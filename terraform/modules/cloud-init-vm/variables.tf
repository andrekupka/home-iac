variable "name" {
  type = string
  description = "Name of the VM"
}

variable "node" {
  type = string
  description = "Node to create VM on"
  default = "pve"
}

variable "cloud_init_template" {
  type = string
  description = "The cloud init template VM to use"
  default = "debian-10-cloudinit-template"
}

variable "cores" {
  type = number
  description = "Number of cores of the vm"
  default = 2
}

variable "memory" {
  type = number
  description = "Memory for VM"
  default = 1024
}

variable "network_bridge" {
  type = string
  description = "Network bridge, default is internal vlan"
  default = "vmbr100"
}

variable "mac_address" {
  type = string
  description = "MAC-Address of the main network interface"
  default = null
}

variable disk_storage {
  type = string
  description = "Storage location of the main disk"
  default = "local-lvm"
}

variable "disk_size" {
  type = string
  description = "Size of the main disc"
  default = "8G"

  validation {
    error_message = "The disk size must have the format '\\d+[KMG]'."
    condition = can(regex("^\\d+[KMG]$", var.disk_size))
  }
}

variable "ssh_user" {
  type = string
  description = "The ssh user to acces to vm"
  default = "iac"
}

variable "ssh_public_key" {
  type = string
  description = "The ssh public key to access the vm"
  default = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJKzvQ2Y0sMAvD/uq8z+7cb9G9o3A0jinpZesGn3aHJh freakout@radagast
  EOF
}