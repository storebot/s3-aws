provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo-s4" {
  bucket = "demo-s456troy"
  versioning {
    enabled = false
    mfa_delete = false
  }
}
