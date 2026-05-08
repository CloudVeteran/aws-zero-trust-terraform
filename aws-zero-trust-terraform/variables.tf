variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "zero-trust-demo"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "Default tags for all resources"
  type        = map(string)
  default = {
    Project     = "Zero-Trust"
    Environment = "Production"
    Owner       = "Marlon"
    Compliance  = "CISA-Zero-Trust"
    ManagedBy   = "Terraform"
  }
}
