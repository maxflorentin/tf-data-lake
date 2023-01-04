terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }

    sops = {
      source = "carlpett/sops"
      version = "~> 0.5"
    }
    
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  default_tags {

    tags = {
      Enviroment = "data-dev"
      Project    = "DataLake-infrastructure"
    }
  }

  region = var.region
}
