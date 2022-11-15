terraform {
    source = "../../../../module//subnet"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    name = "subnet-atlantis-check"
    network = "vpc-atlantis-check"
    ip_cidr_range = "10.30.0.0/24"
}