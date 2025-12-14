module "resource_group" {
  source       = "./modules/resource_group"
  project_name = var.project_name
  environment  = var.environment
  location     = var.location
}

module "adls" {
  source              = "./modules/adls"
  project_name        = var.project_name
  environment         = var.environment
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "databricks" {
  source              = "./modules/databricks"
  project_name        = var.project_name
  environment         = var.environment
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "keyvault" {
  source              = "./modules/keyvault"
  project_name        = var.project_name
  environment         = var.environment
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}
