terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.27.0"
    }
  }
}

provider "aws" {
  shared_credentials_files = [".aws/credentials"]
  profile                  = "sre"
  region = var.region
}
