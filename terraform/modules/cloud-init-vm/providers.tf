terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://pve.home.andrekupka.de:8006/api2/json"
  pm_user = "root@pam"
}