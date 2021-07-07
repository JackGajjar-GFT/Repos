# Create a Google Storage Bucket
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket
# https://www.terraform.io/docs/language/data-sources/index.html

resource "random_integer" "suffix" {
    min=1
    mix=99999
}
data "google_project" "project" {
}
resource "google_storage_bucket" "storage" {
  name          = "Pasang${random_integer.suffix.result}"
  location      = "US"

}





 