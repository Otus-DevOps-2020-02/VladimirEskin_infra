terraform {
  required_version = "~> 0.12.19"
}
provider "google" {
  credentials = file("~/.config/gcloud/legacy_credentials/infra-271213-cd6414e93df8.json")
  version     = "2.15"
  project     = var.project
  region      = var.region
}
module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  zone            = var.zone
  app_disk_image  = var.app_disk_image
}
module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
}
module "vpc" {
  source        = "../modules/vpc"
  source_ranges = ["0.0.0.0/0"]
}
