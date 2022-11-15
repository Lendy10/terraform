terraform {
    source = "../../../../module//subnet"
}

include {
    path = find_in_parent_folders()
}

//make atlantis subnet
inputs = {
    name = "subnet-atlantis"
    network = "vpc-atlantis-check"
    ip_cidr_range = "10.30.0.0/24"
}