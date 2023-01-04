resource "aws_s3_bucket" "data_logs" {
  bucket = var.bucket_name
}
