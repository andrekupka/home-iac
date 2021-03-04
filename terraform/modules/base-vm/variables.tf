variable "name" {
  type = string
  description = "Name of the VM"
}

variable "node" {
  type = string
  description = "Node to create VM on"
  default = "pve"
}

variable "iso" {
  type = string
  description = "The ISO to boot from"
  default = "local:iso/debian-10.8.0-amd64-netinst.iso"
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
  description = "MAC-Adress of the main network interface"
  default = null
}

variable disk_storage {
  type = string
  description = "Storage location of the main disk"
  default = "local-lvm"
}

variable "disk_size" {
  type = number
  description = "Size of the main disc"
  default = 8
}