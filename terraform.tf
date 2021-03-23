provider "aws" {
  region     = var.region
}

module "s3_bucket" {
  source = "github.com/guxlightyear/terraform-aws-s3-bucket?ref=v1.21.0"


	acceleration_status = "Enabled"

  bucket = var.bucket_name
  acl    = "private"

  versioning = {
    enabled = true
  }
}
