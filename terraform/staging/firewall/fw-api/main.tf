module "fw-api" {
  source        = "../../../../module/firewall"
  project       = "studied-union-367003"
  region        = "asia-southeast2"
  zone          = "asia-southeast2-a"
  credentials   = "../../../../../terraform-practice/studied-union-367003-ec08e9cf3f22.json"
  name          = "fw-api"
  network       = "default"
  ports         = ["22", "80"]
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-ssh-icmp"]
}
