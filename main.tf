# Use this instruction to import the recently created project if you are not creating it via Terraform
# import {
#   id = var.project_id
#   to = module.project.google_project.default
# }

module "project" {
  source = "./project"

  project_id      = var.project_id
  project_name    = var.project_name
  organization_id = var.organization_id
}
