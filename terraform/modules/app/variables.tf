variable public_key_path {
  description = "~/.ssh/vesk.pub"
}
variable zone {
  description = "europe-west1-b"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-base-1585553621"
}
