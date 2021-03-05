module "vm" {
  source = "../modules/cloud-init-vm"

  name = "pihole-ng"

  mac_address = "9E:CA:1E:51:9B:58"

  cores = 1
  disk_size = "2G"
  memory = 256
}

output "mac_address" {
  value = module.vm.mac_address
}