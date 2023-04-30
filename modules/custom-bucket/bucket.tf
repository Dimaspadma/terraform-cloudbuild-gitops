# Create Bucket for datasets
resource "google_storage_bucket" "bucket_models" {
  name     = var.name
  location = var.location

  uniform_bucket_level_access = true

  lifecycle {
    ignore_changes = [  ]
  }
}