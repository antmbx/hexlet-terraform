# terraform init -reconfigure -backend-config=secret.backend.tfvars
terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    region                      = "ru-central1"
    key                         = "hexlet-remote-state"
    skip_region_validation      = true
    skip_credentials_validation = true    
    skip_requesting_account_id  = true # Необходимая опция Terraform для версии 1.6.1 и старше.
    skip_s3_checksum            = true # Необходимая опция при описании бэкенда для Terraform версии 1.6.3 и старше.    
  }
}