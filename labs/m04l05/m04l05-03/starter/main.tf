module "network" {
  source  = "./modules/network"
  version = "1.2.0"
  name    = var.network_name
  subnets = var.subnet_names
}
