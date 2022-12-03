terraform {
    source = "../../../../module//peering" 
}

include {
    path = find_in_parent_folders()
}

inputs = {
    name = "kubernetes-cluster-devops"
    node_count = "3"
    instance_type = "e2.medium"
}