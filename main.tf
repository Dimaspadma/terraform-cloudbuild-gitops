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