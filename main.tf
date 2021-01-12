provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo-s4" {
  bucket = "demo-s230"
  versioning {
    enabled = true

    mfa_delete = true

  }
}

resource "aws_s3_bucket_policy" "demo-s4" {
  bucket = "${aws_s3_bucket.demo-s4.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "demo-s4-restrict-access-to-users-or-roles",
      "Effect": "Allow",
      "Principal": [
        {
          "AWS": [
            arn:aws:iam::641885301384:role/Accurics_Read_Only_Role,
            arn:aws:iam::641885301384:user/harshit2
          ]
        }
      ],
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.demo-s4.id}/*"
    }
  ]
}
POLICY
}