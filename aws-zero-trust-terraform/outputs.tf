output "vpc_id" {
  value       = module.zero_trust.vpc_id
  description = "VPC ID"
}

output "verified_access_instance_id" {
  value       = module.zero_trust.verified_access_instance_id
  description = "Verified Access Instance ID"
}
