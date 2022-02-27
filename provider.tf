terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.72.0"
    }
  }
}
provider "aws" {
  region = "eu-central-1"
  access_key = var.access
  secret_key = var.secret
}