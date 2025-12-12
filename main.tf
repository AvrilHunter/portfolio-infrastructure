
module "s3_portfolio" {
  source          = "./modules/s3"
  bucket-name     = "avril-portfolio-04032025"
  environment-tag = "public"
  bucket-name-tag = "portfolio"
}

resource "aws_s3_bucket_public_access_block" "portfolio_bucket" {
  bucket                  = module.s3_portfolio.bucket_id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "portfolio" {
  bucket = module.s3_portfolio.bucket_id

  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_policy" "allow-read-access-portfolio" {
  bucket     = module.s3_portfolio.bucket_id
  policy     = data.aws_iam_policy_document.allow-read-portfolio.json
  depends_on = [aws_s3_bucket_public_access_block.portfolio_bucket]
}

data "aws_iam_policy_document" "allow-read-portfolio" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${module.s3_portfolio.bucket_name}/*"]
    effect    = "Allow"
    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}