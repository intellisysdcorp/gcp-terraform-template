# allow-psc-nat-80
resource "google_compute_firewall" "allow_psc_nat_80" {
  name    = "allow-psc-nat-80"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 1000
}

# default-allow-health-check
resource "google_compute_firewall" "default_allow_health_check" {
  name    = "default-allow-health-check"
  network = "default"

  allow {
    protocol = "tcp"
  }

  source_ranges = ["35.191.0.0/16", "130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22"]
  direction     = "INGRESS"
  priority      = 1000
}

# default-allow-health-check-ipv6
resource "google_compute_firewall" "default_allow_health_check_ipv6" {
  name    = "default-allow-health-check-ipv6"
  network = "default"

  allow {
    protocol = "tcp"
  }

  source_ranges = ["2600:1901:8001::/48", "2600:2d00:1:b029::/64"]
  direction     = "INGRESS"
  priority      = 1000
}

# default-allow-http
resource "google_compute_firewall" "default_allow_http" {
  name    = "default-allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 1000
}

# default-allow-https
resource "google_compute_firewall" "default_allow_https" {
  name    = "default-allow-https"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 1000
}

# default-allow-icmp
resource "google_compute_firewall" "default_allow_icmp" {
  name    = "default-allow-icmp"
  network = "default"

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 65534
}

# default-allow-internal
resource "google_compute_firewall" "default_allow_internal" {
  name    = "default-allow-internal"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "icmp"
  }

  source_ranges = ["10.128.0.0/9"]
  direction     = "INGRESS"
  priority      = 65534
}

# default-allow-rdp
resource "google_compute_firewall" "default_allow_rdp" {
  name    = "default-allow-rdp"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 65534
}

# default-allow-ssh
resource "google_compute_firewall" "default_allow_ssh" {
  name    = "default-allow-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 65534
}
