terraform {
    source = "../../../../module//peering" 
}

include {
    path = find_in_parent_folders()
}

inputs = {
    name = "peer-api-deploy"
    network = "projects/studied-union-367003/global/networks/vpc-atlantis-check"
    peer_network = "projects/studied-union-367003/global/networks/vpc-api"
}