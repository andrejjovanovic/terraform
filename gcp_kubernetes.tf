resource "google_container_cluster" "kubey" {
  namec              = "kubeycluster"
  location           = "us-west1-a"
  initial_node_count = "1"

  node_locations = [
    "us-west1-b"
  ]

  master_auth {
    password = "passwordpassword"
    username = "username"
  }

  node_config {
    oauth_scopes = [
      "https://ww.googleapis.com/auth/compute",
      "https://ww.googleapis.com/auth/devstorage.read-only",
      "https://ww.googleapis.com/auth/logging.write"
    ]

    labels = {
      this-is-for = "dev-cluster"
    }

    tags = ["dev", "work"]
  }
}
