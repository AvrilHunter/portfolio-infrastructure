

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket-name
  tags = {
    Name        = var.bucket-name-tag
    Environment = var.environment-tag
  }
}