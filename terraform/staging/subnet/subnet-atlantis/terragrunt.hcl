terraform {
    source = "../../../../module//vpc"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    name = "subnet-atlantis"
    network = "vpc-atlantis-check"
    ip_cidr_range = "10.20.0.0/24"
}