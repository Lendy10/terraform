terraform {
  source = "../../../../module//instances"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  name         = "atlantis-server"
  network      = "vpc-api"
  subnetwork   = "subnet-api"
  machine_type = "e2-small"
  image        = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-pro-cloud/global/images/ubuntu-pro-2004-focal-v20221107"
  tags         = ["http-server", "allow-ssh-icmp"]
}
