remote_state {
  backend = "gcs"
  config = {
    bucket = "lendy-terraform-state"
    prefix = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/home/app/http/kubernetes/terraform/terraform-practice/studied-union-367003-ec08e9cf3f22.json"
  }
}

inputs = {
  credentials = "/home/app/http/kubernetes/terraform/terraform-practice/studied-union-367003-ec08e9cf3f22.json"
  region      = "asia-southeast2"
  zone      = "asia-southeast2-a"
  project  = "studied-union-367003"
  name = "${basename(get_terragrunt_dir())}"
}