# Terraform example for deploying a cloud environment
resource "aws_s3_bucket" "data_bucket" {
  bucket = "visitor-data-storage"
}