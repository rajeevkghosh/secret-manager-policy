provider "google" {
  #access_token = var.access_token
  project      = "tokyo-nomad-323506"
}

resource "google_secret_manager_secret" "secret-basic" {
  secret_id = "secret"

  labels = {
    label = "my-label"
  }

  replication {
    
     replicas {
        location = "us-central1"
      }
    
  }
}
