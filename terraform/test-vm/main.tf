module "vm" {
  source = "../modules/cloud-init-vm"

  name = "test-vm"
  mac_address = "5A:79:5F:8B:A7:B6"
}
