module "server-coba" {
  source       = "../../../../module/instances"
  project      = "studied-union-367003"
  region       = "asia-southeast2"
  zone         = "asia-southeast2-a"
  credentials  = "../../../../../terraform-practice/studied-union-367003-ec08e9cf3f22.json"
  name         = "server-coba"
  network      = "default"
  subnetwork   = "default"
  machine_type = "e2-small"
  image        = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-pro-cloud/global/images/ubuntu-pro-2004-focal-v20221107"
  tags         = ["http-server", "allow-ssh-icmp"]
}
