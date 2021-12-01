resource "aws_s3_bucket" "s3exercise-bucket" {
  bucket = var.pet_bucket_name

  versioning {
    enabled = true
  }

  tags = {
    Name        = var.s3exercise-bucket
    Environment = "Test"
  }
}