terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {}

resource "random_pet" "name" {
  length = 2
}

resource "google_container_cluster" "test" {
  name     = "test-cluster"
  location = "us-central1"
}

output "pet_name" {
  value = random_pet.name.id
}
