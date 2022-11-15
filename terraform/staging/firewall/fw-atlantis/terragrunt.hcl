terraform {
    source = "../../../../module//firewall"
}

include {
    path = find_in_parent_folders()
}

//make an firewall
inputs = {
    name = "fw-atlantis"
    network = "vpc-atlantis-check"
    ports = ["22"]
    source_ranges = ["0.0.0.0/0"]
    target_tags = ["allow-ssh-icmp"]
}