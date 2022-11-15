terraform {
    source = "../../../../module//firewall"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    name = "fw-atlantis"
    network = "vpc-atlantis-check"
    ports = ["22", "80"]
    source_ranges = ["0.0.0.0/0"]
}