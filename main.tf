provider "google" {
  zone = var.region
  project = "static-epigram-458808-h4"
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  

  initial_node_count = var.node_count

  node_config {
    machine_type = var.node_machine_type
    disk_size_gb = 20
  }

  remove_default_node_pool = false
}
