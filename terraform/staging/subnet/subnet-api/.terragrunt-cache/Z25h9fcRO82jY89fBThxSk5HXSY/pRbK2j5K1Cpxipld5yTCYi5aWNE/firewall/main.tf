terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.43.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project
  region = var.region
  zone = var.zone
  credentials = var.credentials
}

resource "google_compute_firewall" "default" {
  name    = var.name
  network = var.network

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = var.ports
  }

  source_ranges = var.source_ranges
  target_tags = var.target_tags
}