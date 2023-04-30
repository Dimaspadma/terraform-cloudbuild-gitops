# VPC
resource "google_compute_network" "vpc" {
  name                    = var.name
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "k8s-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "192.168.0.0/24"
}
