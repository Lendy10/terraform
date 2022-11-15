terraform {
    source = "../../../../module//firewall"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    name = "fw-deploy-server"
    network = "vpc-atlantis-check"
    ports = ["22"]
    source_ranges = ["0.0.0.0/0"]
    target_tags = ["allow-ssh-icmp"]
}