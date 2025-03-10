output "bucket_items" {
  value = length(data.aws_s3_objects.bucket_items.keys)
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}

output "bucket_region" {
  value = aws_s3_bucket.my_bucket.region
}

output "bucket_arn" {
  value = aws_s3_bucket.my_bucket.arn
}

output "bucket_id" {
  value = aws_s3_bucket.my_bucket.id
}
