resource "google_compute_instance" "dpa" {
  name         = "saiindue"
  machine_type = "e2-medium"
  zone         = "us-east1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Include this section to give the VM an external ip address
    }
  }
}
   
