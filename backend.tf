terraform {
  backend "s3" {
    bucket = "s3exercise-bucket"
    key    = "terraform-lambda/terraform.tfstates"
  }
}