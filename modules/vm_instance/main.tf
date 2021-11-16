resource "google_compute_instance" "vm_instance" {
  count        = var.num_instances 
  name         = "terraform-instance-${count.index+1}"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = "${var.network}"
    access_config {
    }
  }
}
