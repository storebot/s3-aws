provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "demo-s4" {
  bucket = "demo-s456"
  versioning {
    enabled = false
    mfa_delete = false
  }
}
