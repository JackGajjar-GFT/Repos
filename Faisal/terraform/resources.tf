# Create a Google Storage Bucket
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket
# https://www.terraform.io/docs/language/data-sources/index.html

resource "random_integer" "suffix" {
  min = 1
  max = 99999
}

resource "google_storage_bucket" "google_bucket" {
  name = "Faisal${random_integer.suffix.result}"
  location = "EU"
}