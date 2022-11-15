terraform {
  source = "../../../../module//firewall"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  name          = "fw-api"
  network       = "vpc-api"
  ports         = ["22", "80"]
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-ssh-icmp"]
}
