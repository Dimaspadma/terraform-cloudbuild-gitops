module "my_custom_bucket" {
  source = "./modules/custom-bucket"
  name = "models-${var.gcp_project}"
  location = var.gcp_region
}