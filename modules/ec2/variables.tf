variable "ami_id" {
  type = string
  description = "AMI ID for EC2 Instance"
}

variable "instance_type" {
  type = string
  description = "EC2 Instance type"
}

variable "public_subnet_id" {
  type = string
  description = "Subnet where EC2 will be launched"
}

variable "web_sg_id" {
  type = string
  description = "Security Group ID for web server"
}

variable "key_name" {
  type = string
  description = "Name of EC2 key pair"
}

variable "db_name" {
  type = string
  description = "Database name for WordPress"
}

variable "db_username" {
  type = string
  description = "Database username"
}

variable "db_password" {
  type = string
  description = "Database password"
  sensitive = true
}

variable "db_host" {
  type = string
  description = "Database endpoint (from RDS)"
}