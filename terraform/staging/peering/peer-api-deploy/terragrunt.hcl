terraform {
    source = "../../../../module//peering" 
}

include {
    path = path_relative_to_include()
}

inputs = {
    name = "peer-api-deploy"
    network = "vpc-api"
    peer_network = "vpc-atlantis-check"
}