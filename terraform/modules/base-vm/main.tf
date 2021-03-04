resource "proxmox_vm_qemu" "vm" {
  name = var.name
  target_node = var.node

  onboot = false
  iso = var.iso

  memory = var.memory
  balloon = 0

  cpu = "kvm64"
  sockets = 1
  cores = var.cores

  scsihw = "virtio-scsi-single"

  define_connection_info = false
  preprovision = false

  network {
    model = "virtio"
    bridge = var.network_bridge
    macaddr = var.mac_address
    firewall = true
  }

  disk {
    type = "virtio"
    storage = var.disk_storage
    size = "${var.disk_size}G"
  }
}