output "uptime_check_id" {
  description = "The id of the uptime check."
  value       = google_monitoring_uptime_check_config.uptime_check.id
}

output "alert_policy_id" {
  description = "The id of the alert policy."
  value       = google_monitoring_alert_policy.alert_policy.id
}