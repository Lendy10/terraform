remote_state {
  backend = "gcs"
  config = {
    bucket = "lendy-terraform-state"
    prefix = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/home/lendyph/credential.json"
  }
}

inputs = {
  credentials = "/home/lendyph/credential.json"
  region      = "asia-southeast2"
  zone      = "asia-southeast2-a"
  project  = "studied-union-367003"
  name = "${basename(get_terragrunt_dir())}"
}

#cek push bro sekali lagiiiii