# Task2Advanced

Инфраструктура разворачивается через Terraform с использованием S3-совместимого backend и GitLab CI.

Структура:

Task2Advanced/
  main.tf
  variables.tf
  .gitlab-ci.yml
  README.md
  envs/
    dev.tfvars
    stage.tfvars
    prod.tfvars

Для запуска локально:

terraform init -backend-config="bucket=..." -backend-config="key=dev/terraform.tfstate" -backend-config="region=..." -backend-config="endpoint=..." -backend-config="access_key=..." -backend-config="secret_key=..." -backend-config="skip_region_validation=true" -backend-config="skip_credentials_validation=true" -backend-config="force_path_style=true"

terraform plan -var-file="envs/dev.tfvars"
terraform apply -var-file="envs/dev.tfvars"

Состояние хранится только в S3-совместимом хранилище. CI-пайплайн выполняет terraform init, terraform plan и terraform apply с ручным подтверждением.
