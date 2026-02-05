output "s3_bucket_name" {
  value       = aws_s3_bucket.demo.bucket
  description = "Name of the created bucket"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.demo.name
  description = "Name of the created table"
}
