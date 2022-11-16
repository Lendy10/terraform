terraform {
    source = "../../../../module//peering" 
}

include {
    path = find_in_parent_folders()
}

inputs = {
    name = "peer-api-deploy"
    network = "vpc-api"
    peer_network = "vpc-atlantis-check"
}