terraform {
  backend "s3" {
    bucket = "s3exercise-bucket"
    key    = "lambdachallenge" # KEY must be unique for each PROJECT
  }
}