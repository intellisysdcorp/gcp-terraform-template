resource "google_monitoring_notification_channel" "notification_channel" {
  for_each     = { for k, v in var.channels : k => v }
  project      = var.project_id
  display_name = each.value.display_name
  type         = each.value.type
  labels       = each.value.labels
}