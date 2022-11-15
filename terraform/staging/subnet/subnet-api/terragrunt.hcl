terraform {
    source = "../../../../module//subnet"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    name = "subnet-api"
    network = "vpc-api"
    ip_cidr_range = "10.10.0.0/24"
}