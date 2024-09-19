# resource "google_artifact_registry_repository" "test" {
#   count = length(var.regions)

#   project       = var.project_id
#   location      = var.regions[count.index]
#   repository_id = "test"
#   format        = "DOCKER"
# }
