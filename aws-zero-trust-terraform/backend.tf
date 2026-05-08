terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket-here"
    key            = "landing-zone/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
    encrypt        = true
  }
}
