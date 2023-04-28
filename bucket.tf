# Create Bucket for datasets
resource "google_storage_bucket" "bucket_models" {
  name     = "models-${var.gcp_project}"
  location = var.gcp_region

  uniform_bucket_level_access = true
}