variable public_key_path {
  description = "~/.ssh/vesk.pub"
}
variable zone {
  description = "europe-west1-b"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
