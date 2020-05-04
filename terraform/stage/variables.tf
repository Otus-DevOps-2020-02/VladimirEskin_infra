variable project {
  description = "infra-271213"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1-b"
}
variable public_key_path {
  # Описание переменной
  description = "~/.ssh/vesk.pub"
}
#variable disk_image {
#description = "reddit-base-1585553621"
#}
variable private_key_path {
  description = "~/.ssh/vesk"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-base-1585553621"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable zone {
  description = "europe-west1-b"
}
