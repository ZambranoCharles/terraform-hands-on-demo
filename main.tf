locals {
  bucket_name = "tf-localstack-demo-${var.suffix}"
  tags = {
    workshop = "terraform-localstack"
    owner    = var.owner
  }
}

resource "aws_s3_bucket" "demo" {
  bucket = local.bucket_name
  tags   = local.tags
}

resource "aws_dynamodb_table" "demo" {
  name         = "tf-demo-table-${var.suffix}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = local.tags
}
