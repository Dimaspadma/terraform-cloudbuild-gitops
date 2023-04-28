variable "gcp_credential" { }
variable "gcp_project" { }
variable "gcp_region" { 
  default = "us-central1"
}
variable "gcp_zone" { 
  default = "us-central1-c"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}