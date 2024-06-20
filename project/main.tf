resource "google_project" "default" {
  name       = var.project_name
  project_id = var.project_id
  org_id     = var.organization_id

  auto_create_network = false
}
