
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  // version = "3.5.0"

  credentials = file(var.credentials_file)

  project = var.project
  // region  = var.region
  // zone    = var.zone
}

resource "google_compute_network" "vpc_network" {
  name = "node-test-network"
}

resource "google_compute_firewall" "vpc_firewall" {
  name    = "node-test-firewall"
  network = "node-test-network"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  // source_tags = ["network-perf"]
}

resource "google_compute_instance" "vm_instance" {

    tags = ["network-perf"]

    /*
    dynamic {
        for_each = var.config
        content {
            name         = var.config.value["name"]
            machine_type = var.config.value["machine_type"]
            zone = var.config.value["zone"]
        }
    }
    */
    // for_each = var.config
    for_each = {for vm in var.config:  vm.name => vm}
    name = each.value["name"]
    machine_type = each.value["machine_type"]
    zone = each.value["zone"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
  /*
  provisioner "remote-exec" {
        inline = [
        "ping -c 10 flandre.nyanshell.com"
        ]
  }
  */
}