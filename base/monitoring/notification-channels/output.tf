output "channels" {
  value = google_monitoring_notification_channel.notification_channel
}


output "channels_ids" {
  description = "The ids of the notification channels"
  value       = values(google_monitoring_notification_channel.notification_channel)[*].id
}