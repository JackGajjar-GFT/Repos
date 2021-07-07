# Terraform base config
terraform {
  required_providers {
    google = {}
  }

  backend "gcs" {}

}

# Configure the Google Cloud Provider
provider "google" {
  project = "terraform-training-318910"
}

