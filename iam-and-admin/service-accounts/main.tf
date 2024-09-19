#region SERVICE ACCOUNT
resource "google_service_account" "service-account" {
  account_id   = "service-account"
  display_name = "SERVICE ACCOUNT"
}

variable "service-account-roles" {
  type = list(string)
  default = [
    "roles/iam.serviceAccountUser",
  ]
}
resource "google_project_iam_member" "service-account-roles-binding" {
  for_each = toset(var.service-account-roles)

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.service-account.email}"
}

data "google_iam_policy" "service-account" {
  binding {
    role    = "roles/iam.serviceAccountUser"
    members = ["serviceAccount:${google_service_account.service-account.email}"]
  }

}

resource "google_service_account_iam_policy" "service-account-service-account" {
  service_account_id = google_service_account.service-account.name
  policy_data        = data.google_iam_policy.service-account.policy_data
}
#endregion 