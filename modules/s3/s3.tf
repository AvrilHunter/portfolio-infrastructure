terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    version = "5.81.0" }
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket-name
  tags = {
    Name        = var.bucket-name-tag
    Environment = var.environment-tag
  }
}

data "aws_s3_objects" "bucket_items" {
  bucket = aws_s3_bucket.my_bucket.bucket
}
