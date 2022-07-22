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
        name = "network-test-asia-east1-a"
        zone = "asia-east1-a"
        machine_type = "e2-small"
    },
    {
        name = "network-test-asia-east1-b"
        zone = "asia-east1-b"
        machine_type = "e2-small"
    },
    {
        name = "network-test-asia-east1-c"
        zone = "asia-east1-c"
        machine_type = "e2-small"
    },
    {
        name = "network-test-asia-east2-a"
        zone = "asia-east2-a"
        machine_type = "e2-small"
    },
    {
        name = "network-test-asia-east2-b"
        zone = "asia-east2-b"
        machine_type = "e2-small"
    },
    {
        name = "network-test-asia-east2-c"
        zone = "asia-east2-c"
        machine_type = "e2-small"
    },
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
    {
        name = "network-test-asia-northeast1-c"
        zone = "asia-northeast1-c"
        machine_type = "e2-small"
    },
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
