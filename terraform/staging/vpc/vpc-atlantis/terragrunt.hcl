terraform {
    source = "../../../../module//vpc"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    name = "vpc-atlantis"
}