terraform {
  source = "../../../module//kubernetes"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    name = "kuberenetes-cek-atlantis"
    node_count = "3"
    instance_type = "ec2.medium"
}