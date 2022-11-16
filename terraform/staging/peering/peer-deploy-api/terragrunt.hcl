terraform {
    source = "../../../../module//peering" 
}

include {
    path = find_in_parent_folders()
}

inputs = {
    name = "peer-api-deploy"
    network = "vpc-atlantis-check"
    peer_network = "vpc-api"
}