# Terraform обратится к облаку и попытается найти образ по заданному ключу. В нашем случае он будет искать образ из семейства ubuntu-2204-lts. Если он найдет его, то сохранит найденную информацию в объект data. После этого инфраструктура Terraform сможет использовать ее.

data "yandex_compute_image" "img" {
  family = "ubuntu-2204-lts"
}

# Посмотрим, что сохранил Terraform в источник. Для этого воспользуемся блоком output:
output "show-img" {
  value = data.yandex_compute_image.img
}

# Обращаться можно так image_id = data.yandex_compute_image.img.id