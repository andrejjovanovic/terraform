resource "google_container_cluster" "kubey" {
  name = "kubeycluster"
  location = "us-west1-a"
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
          "https://www.googleapis.com/auth/compute"
      ]

      labels = {
          this-is-for = "dev-cluster"
      }

      tags = ["dev","work"]
  }
}
