resource "google_compute_network" "default" {
  project = var.project_id

  name        = "default"
  description = "Default network for the project"

  mtu                     = 1460
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
}


resource "google_compute_subnetwork" "default" {
  for_each = toset(var.regions)

  name    = "default"
  network = google_compute_network.default.id
  region  = each.key

  ip_cidr_range = cidrsubnet("10.142.0.0/16", 4, each.key == var.regions[0] ? 0 : index(var.regions, each.key))

  stack_type               = "IPV4_ONLY"
  private_ip_google_access = false
}

#region Private services peering (for Cloud SQL and others services)
resource "google_compute_global_address" "private-service" {
  name          = "default-ip-range"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.default.id
}

resource "google_service_networking_connection" "servicenetworking" {
  network                 = google_compute_network.default.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private-service.name]
}
#endregion