terraform {
  source = "../../../module//kubernetes"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    name = "kuberenetes-cluster-atlantis"
    node_count = "3"
    instance_type = "e2-medium"
}