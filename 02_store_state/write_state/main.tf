# lab_2_terraform_cloud_demo/write_state/main.tf
terraform {
  backend "remote" {
    organization = "intuit-demo"

    workspaces {
      name = "lab_2_write_state"
    }
  }
}

resource "random_pet" "password" {
  
}

resource "random_pet" "password2" {
  
}

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}

output "random" {
  value = random_id.random.hex
}

output "password" {
  value = random_pet.password.id
}

output "password2" {
  value = random_pet.password2.id
}

