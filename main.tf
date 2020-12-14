provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo-s4" {
  bucket = "demo-s230"
  versioning {
    enabled = false
    mfa_delete = true
  }
}
