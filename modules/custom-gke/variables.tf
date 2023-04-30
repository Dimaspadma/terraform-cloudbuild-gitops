variable "name" {
  description = "Name the kubernetes cluster"
  type = string
}

variable "location" {
  description = "Region for the kubernetes cluster"
  type = string
}

variable "project_id" {
  description = "Project id"
  type = string
}

variable "network" {
  description = "Network"
  type = string
}

variable "subnetwork" {
  type = string
}

variable "gke_num_nodes" {
  description = "number of gke nodes"
  type = number
  default = 1
}
