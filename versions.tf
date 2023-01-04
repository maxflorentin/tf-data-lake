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
  region = var.region
}
