module "vm" {
  source = "../modules/cloud-init-vm"

  name = "pihole"

  mac_address = "92:8B:72:C2:DA:59"

  cores = 1
  disk_size = "2G"
  memory = 256
}

output "mac_address" {
  value = module.vm.mac_address
}