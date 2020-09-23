provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo-s4" {
  bucket = "${var.s3_bucket_prefix}-terraformcloud"
  versioning {
    enabled = false
    mfa_delete = false
  }
}

variable "s3_bucket_prefix" {
  default = "sample_prefix_test214"
}
