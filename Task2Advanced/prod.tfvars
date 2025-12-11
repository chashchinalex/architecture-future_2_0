environment = "prod"
name        = "vm-prod-01"
zone        = "ru-central1-b"
platform_id = "standard-v3"

cores  = 8
memory = 16

boot_disk_size = 80
boot_disk_type = "network-ssd"

data_disk_size = 200
data_disk_type = "network-ssd"

subnet_id = "your-prod-subnet-id-here"
image_id  = "your-prod-image-id-here"

ssh_public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEkAAlfoedHdd25XUlmfhbm6Q8rlJ4qMeZMQugWMOgvt mac-key"

enable_nat = false

labels = {
  env     = "prod"
  project = "future20"
  tier    = "critical"
}
