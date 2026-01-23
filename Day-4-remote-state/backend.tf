terraform {
  backend "s3" {
    bucket = "day-4-aws-bucket-cloud-terraform"
    key    = "day-4/terraform.tfstate"
    region = "us-east-1"
    # Enable S3 native locking
    use_lockfile = true 
    # The dynamodb_table argument is no longer needed

  }
}