terraform {
    required_version = "~> 0.12.19"
}
provider "google" {
version = "2.15"
project = "infra-271213"
region = "europe-west-1"
}
resource "google_compute_instance" "app" {
  name = "reddit-app"
  machine_type = "g1-small"
  zone = "europe-west1-b"
  tags = ["reddit-app"]
  boot_disk {
    initialize_params {
      image = "reddit-base-1585553621"
    }
  }
  metadata = {
      ssh-keys = "vesk:${file(var.pubkey_path)}"
  }
  network_interface {
    network = "default"
    access_config {}
  }
  connection {
      type = "ssh"
      host = self.network_interface[0].access_config[0].nat_ip
      user  = "vesk"
      agent = false
      private_key = file("~/Users/ves/.ssh/vesk")
  }
  provisioner "file" {
      source = "terraform/files/puma.service"
      destination = "/tmp/puma.service"
  }
  provisioner "remote-exec" {
      script = "terraform/files/deploy.sh"
  }
}
resource "google_compute_firewall" "firewall_puma" {
  name = "allow-puma-default"
  network = "default"
  allow {
      protocol = "tcp"
      ports = ["9292"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["reddit-app"]
}
