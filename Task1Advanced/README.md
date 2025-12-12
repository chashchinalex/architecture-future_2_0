# TaskAdvanced1 — модульная инфраструктура для нескольких сред


## Структура

modules/vm — модуль виртуальной машины  
envs/dev|stage|prod — отдельные окружения  

## Запуск:
terraform init  
terraform plan -var-file="<env>.tfvars"  
terraform apply -var-file="<env>.tfvars"
