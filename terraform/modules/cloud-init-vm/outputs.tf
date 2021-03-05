output "mac_address" {
  value = proxmox_vm_qemu.vm.network.0.macaddr
  description = "MAC-Address of the create VM's first interface"
}