terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

# Leave GCS config empty in code so it can be dynamically injected at init time
  backend "gcs" {}
}

provider "google" {
  project = var.project_id
  region  = var.region
}