data "aws_s3_objects" "bucket_items" {
  bucket = aws_s3_bucket.my_bucket.bucket
}