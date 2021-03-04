resource "proxmox_vm_qemu" "vm" {
  name = var.name
  target_node = var.node

  onboot = true

  clone = var.cloud_init_template
  os_type = "cloud-init"

  memory = var.memory
  balloon = 0

  cpu = "kvm64"
  sockets = 1
  cores = var.cores

  scsihw = "virtio-scsi-pci"

  network {
    model = "virtio"
    bridge = var.network_bridge
    macaddr = var.mac_address
    firewall = true
  }

  disk {
    type = "virtio"
    storage = var.disk_storage
    size = var.disk_size
    discard = "on"
  }

  ipconfig0 = "ip=dhcp"
  sshkeys = var.ssh_public_key
  ciuser = var.ssh_user
}