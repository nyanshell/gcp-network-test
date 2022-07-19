variable "project" { }

variable "credentials_file" { }

variable "config" {

  type = list(object({
    name = string
    zone = string
    machine_type = string
  }))

  default = [
    {
        name = "network-test-asia-northeast1-a"
        zone = "asia-northeast1-a"
        machine_type = "e2-small"
    },
    {
        name = "network-test-asia-northeast1-b"
        zone = "asia-northeast1-b"
        machine_type = "e2-small"
    },
    /*
    {
        name = "network-test-asia-northeast1-c"
        zone = "asia-northeast1-c"
        machine_type = "e2-micro"
    }
    */
    {
        name = "network-test-asia-northeast2-a"
        zone = "asia-northeast2-a"
        machine_type = "e2-micro"
    },
    {
        name = "network-test-asia-northeast2-b"
        zone = "asia-northeast2-b"
        machine_type = "e2-micro"
    },
    {
        name = "network-test-asia-northeast2-c"
        zone = "asia-northeast2-c"
        machine_type = "e2-micro"
    },
  ]
}
