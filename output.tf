output "bucket_items" {
  value = module.s3_portfolio.bucket_items
}

output "bucket_name" {
  value = module.s3_portfolio.bucket_name
}

output "bucket_region" {
  value = module.s3_portfolio.bucket_region
}

output "bucket_arn" {
  value = module.s3_portfolio.bucket_arn
}

output "bucket_id" {
  value = module.s3_portfolio.bucket_id
}


output "endpoint" {
  value = aws_s3_bucket_website_configuration.portfolio.website_endpoint
}

output "bucket_name" {
  value = module.s3_portfolio.bucket_name
}

