module "dev_instance" {
  source = "./module"
  environment = {
    name = "prod"
    network_prefix = "10.2"
  }
}