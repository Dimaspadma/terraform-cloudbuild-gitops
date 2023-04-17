terraform {
  cloud {
    organization = "bangkit"

    workspaces {
      name = "learn-terraform-github-actions"
    }
  }
}

provider "google" {
  project     = var.gcp_project
  region      = var.gcp_region
  zone        = var.gcp_zone
  credentials = var.gcp_credential
}

# Create VPC
resource "google_compute_network" "vpc_network" {
  name                    = "my-network"
  auto_create_subnetworks = false
  mtu                     = 1460
}

# resource "random_id" "bucket_prefix" {
#   byte_length = 8
# }

# resource "google_storage_bucket" "default" {
#   name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
#   force_destroy = false
#   location      = "US"
#   storage_class = "STANDARD"
#   versioning {
#     enabled = true
#   }
# }