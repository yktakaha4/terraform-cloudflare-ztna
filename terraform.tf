terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.5.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.65.0"
    }
  }
}
