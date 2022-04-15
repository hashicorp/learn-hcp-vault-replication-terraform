terraform {
  required_providers {
    hcp = {
      source = "hashicorp/hcp"
      version = ">=0.26.0"
    }
    vault = {
      source = "hashicorp/vault"
      version = ">=3.4.1"
    }
  }
}

provider "vault" {
  # Configuration options
  alias = "admin"
  namespace = "admin"
}
