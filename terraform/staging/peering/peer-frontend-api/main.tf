module "peer-api-frontend" {
  source       = "../../../../module/peering"
  project      = "studied-union-367003"
  region       = "asia-southeast2"
  zone         = "asia-southeast2-a"
  credentials  = "../../../../../terraform-practice/studied-union-367003-ec08e9cf3f22.json"
  name         = "peering-api-frontend"
  network      = "projects/studied-union-367003/global/networks/vpc-api"
  peer_network = "projects/studied-union-367003/global/networks/vpc-frontend"
}
