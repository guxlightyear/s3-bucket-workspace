provider "aws" {
  region = "eu-central-1"
}

module "s3_bucket" {
  source = "github.com/guxlightyear/terraform-aws-s3-bucket?ref=v1.22.0"

  bucket = "my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }
}
