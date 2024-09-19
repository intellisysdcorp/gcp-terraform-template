variable "project_id" {
  description = "The project ID to host the uptime check in (required)."
  type        = string
}

variable "channels" {
  description = "List of all the notification channels to create for alerting if the uptime check fails. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list for a list of types and labels."
  type = list(object({
    display_name = string
    type         = string
    labels       = map(string)
  }))
  default = []
}