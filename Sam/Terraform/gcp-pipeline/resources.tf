# Create a Google Storage Bucket
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket
# https://www.terraform.io/docs/language/data-sources/index.html

resource "google_storage_bucket" "store-file" {
  name   = "store-file"
  location = "EU"
}

resource "google_storage_bucket_object" "file" {
  name   = "file01"
  source = "file.txt"
  bucket = "store-file"
}