terraform {
  backend "gcs" {
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.43.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = var.credentials
}

resource "google_container_cluster" "default" {
  name = var.name

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = var.node_count
}

resource "google_container_node_pool" "default" {
  name       = "${var.name}-node-pool"
  location   = "us-central1"
  cluster    = var.name
  node_count = var.node_count

  node_config {
    preemptible  = true
    machine_type = var.instance_type

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
