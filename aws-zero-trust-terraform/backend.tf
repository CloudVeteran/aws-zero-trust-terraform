terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-mag0508 "
    key            = "zero-trust/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
    encrypt        = true
  }
}
