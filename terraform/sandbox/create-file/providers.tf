

terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }

    # aws = {
    #   source = "hashicorp/aws"
    #   version = "5.1.0"
    # }

    # azurerm = {
    #   source = "hashicorp/azurerm"
    #   version = "3.59.0"
    # }
  }
}

# provider "local" {
#   # Configuration options
# }