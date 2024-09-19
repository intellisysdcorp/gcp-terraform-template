module "vpc-networks" {
  source = "./vpc-networks"

  project_id = var.project_id
  regions    = var.regions
}

module "serverless-vpc-access" {
  source = "./serverless-vpc-access"

  project_id      = var.project_id
  regions         = var.regions
  default_network = module.vpc-networks.default_network
}

module "firewall" {
  source = "./firewall"

  project_id = var.project_id
}
