resource "google_vpc_access_connector" "default" {
  count = length(var.regions)

  name          = "default"
  ip_cidr_range = cidrsubnet("10.8.0.0/24", 4, count.index == 0 ? 0 : index(var.regions, count.index))
  region        = var.regions[count.index]
  network       = var.default_network.id
}
