terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-691414491763"
    key    = "project-infra"
    region = "us-east-1"
  }
}
