# Compute Engine
resource "google_project_service" "project" {
  project = var.project_id
  service = "compute.googleapis.com"
}

# Service Networking
resource "google_project_service" "servicenetworking" {
  project = var.project_id
  service = "servicenetworking.googleapis.com"
}

# Service Usage
resource "google_project_service" "servicenetworking" {
  project = var.project_id
  service = "serviceusage.googleapis.com"
}

# Cloud Build
resource "google_project_service" "servicenetworking" {
  project = var.project_id
  service = "cloudbuild.googleapis.com"
}