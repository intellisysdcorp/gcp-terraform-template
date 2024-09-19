## Simple Uptime Check

This module is used to manage the notification channel(s) to notify if the uptime check fails.

## Usage

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
notification\_channels | List of all the notification channels to create for alerting if the uptime check fails. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list for a list of types and labels. | <pre>list(object({<br>    display_name = string<br>    type         = string<br>    labels       = map(string)<br>  }))</pre> | `[]` | no 

### Outputs

| Name | Description |
|------|-------------|
| channels | The notification channels terraform object |
| channels_ids | The ids of the notification channels |