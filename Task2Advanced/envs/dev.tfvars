environment = "dev"
name        = "vm-dev-01"
zone        = "ru-central1-a"
platform_id = "standard-v3"

cores  = 2
memory = 4

boot_disk_size = 20
boot_disk_type = "network-hdd"

data_disk_size = 50
data_disk_type = "network-hdd"

subnet_id = "e9brh6pcjduunp34hrcs"
image_id  = "fd842f9uafbljr3tjsl1"

ssh_public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEkAAlfoedHdd25XUlmfhbm6Q8rlJ4qMeZMQugWMOgvt mac-key"

enable_nat = true

labels = {
  env     = "dev"
  project = "future20"
}
