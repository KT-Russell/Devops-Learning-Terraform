output "rds_endpoint" {
  value = aws_db_instance.wordpress_db.endpoint
}

output "rds_name" {
  value = aws_db_instance.wordpress_db.db_name
}

output "db_endpoint" {
  description = "The connection endpoint for the RDS instance"
  value = aws_db_instance.wordpress_db.address
}

output "rds_db_name" {
  description = "Name of the RDS WordPress database"
  value = aws_db_instance.wordpress_db.db_name
}