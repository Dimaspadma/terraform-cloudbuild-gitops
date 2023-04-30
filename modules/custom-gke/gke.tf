# # Use a Zonal Cluster

resource "google_container_cluster" "primary" {
  name     = var.name
  location = var.location

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = var.num_nodes

  network    = var.network
  subnetwork = var.subnetwork
}

# Separately Managed Node Pool
resource "google_container_node_pool" "primary_nodes" {
  name       = google_container_cluster.primary.name
  location   = var.location
  cluster    = google_container_cluster.primary.name

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = var.project_id
    }

    # preemptible  = true
    machine_type = "n1-standard-1"
    tags         = ["gke-node", "${var.project_id}-gke"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}
