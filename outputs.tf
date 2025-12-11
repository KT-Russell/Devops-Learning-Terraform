output "setup_status" {
  value       = "Base configuration loaded successfully!"
  description = "Confirms that Terraform loaded correctly before resource creation."
}

output "ec2_public_ip" {
  value       = module.ec2.public_ip
  description = "Public IP address of the WordPress EC2 instance"
}

output "rds_endpoint" {
  value       = module.rds.rds_endpoint
  description = "RDS database endpoint"
}

output "rds_db_name" {
  value       = module.rds.rds_db_name
  description = "Name of the RDS database"
}