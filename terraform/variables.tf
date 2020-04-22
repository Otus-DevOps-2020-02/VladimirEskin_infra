variable project {
  description = "infra-271213"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1"
}
variable public_key_path {
  # Описание переменной
  description = "~/Users/ves/.ssh/vesk.pub"
}
variable disk_image {
  description = "reddit-base-1585553621"
}
