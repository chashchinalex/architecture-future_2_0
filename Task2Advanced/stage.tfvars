environment = "stage"
name        = "vm-stage-01"
zone        = "ru-central1-b"
platform_id = "standard-v3"

cores  = 4
memory = 8

boot_disk_size = 40
boot_disk_type = "network-ssd"

data_disk_size = 100
data_disk_type = "network-ssd"

subnet_id = "your-stage-subnet-id-here"
image_id  = "your-stage-image-id-here"

ssh_public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEkAAlfoedHdd25XUlmfhbm6Q8rlJ4qMeZMQugWMOgvt mac-key"

enable_nat = true

labels = {
  env     = "stage"
  project = "future20"
}
