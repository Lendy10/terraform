remote_state {
  backend = "gcs"
  config = {
    bucket = "lendy-terragrunt-atlantis"
    prefix = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/home/lendyph/credential.json"
  }
}

# /home/lendyph/credential.json
# /home/lendyph/Downloads/studied-union-367003-ec08e9cf3f22.json
inputs = {
  credentials = "/home/lendyph/credential.json"
  region      = "asia-southeast2"
  zone      = "asia-southeast2-a"
  project  = "studied-union-367003"
  name = "${basename(get_terragrunt_dir())}"
}