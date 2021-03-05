module "vm" {
  source = "../modules/cloud-init-vm"

  name = "pihole-ng"

  cores = 2
  disk_size = "2G"
  memory = 256
}
