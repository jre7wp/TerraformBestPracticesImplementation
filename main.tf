resource "google_compute_instance" "this"{
    name = var.server_name
    machine_type = var.machine_type
    zone = var.zone

    boot_disk {
      initialize_params {
        image = "ubuntu-1804-bionic-v20230324"
      }
    }

    network_interface {
      network = "default"
      access_config {
        
      }
    }

    metadata_startup_script = file("startup.sh")
    tags = ["http-server"]

}
