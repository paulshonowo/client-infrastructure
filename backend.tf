terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  backend "gcs" {
    bucket = "${var.prefix}-tfstate-prod"
    prefix = "terraform/state/root"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}