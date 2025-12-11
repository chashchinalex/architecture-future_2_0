terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  backend "s3" {
    endpoint                   = "https://storage.yandexcloud.net"
    bucket                     = "my-terraform-state-ch"
    region                     = "ru-central1"
    key                        = "dev/terraform.tfstate"
    skip_region_validation      = true
    skip_credentials_validation = true
    force_path_style            = true
  }

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.90.0"
    }
  }
}

provider "yandex" {
  zone = var.zone
}

module "vm" {
  source = "./modules/vm"

  name          = var.name
  zone          = var.zone
  platform_id   = var.platform_id
  cores         = var.cores
  memory        = var.memory

  boot_disk_size = var.boot_disk_size
  boot_disk_type = var.boot_disk_type

  data_disk_size = var.data_disk_size
  data_disk_type = var.data_disk_type

  subnet_id      = var.subnet_id
  image_id       = var.image_id
  ssh_public_key = var.ssh_public_key
  enable_nat     = var.enable_nat
  labels         = var.labels
}

output "vm_id" {
  value = module.vm.vm_id
}

output "vm_external_ip" {
  value = module.vm.vm_external_ip
}
