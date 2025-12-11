variable "aws_region" {
  type        = string
  description = "AWS region for all resources"
  default     = "eu-west-2"
}

variable "instance_type" {
  type        = string
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "ami_id" {
  type        = string
  description = "The AMI ID for the EC2 Instance"
  default     = "ami-046c2381f11878233"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR Range"
  default     = "10.0.0.0/16"

  validation {
    condition     = can(cidrnetmask(var.vpc_cidr))
    error_message = "vpc_cidr must be a valid CIDR, e.g. 10.0.0.0/16"
  }
}

variable "public_subnet_cidr" {
  type        = string
  description = "Public subnet CIDR"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  type        = string
  description = "Private subnet CIDR for RDS"
  default     = "10.0.2.0/24"
}

variable "private_subnet_cidr_b" {
  type        = string
  description = "Second private subnet CIDR for RDS multi-AZ"
  default     = "10.0.3.0/24"
}

variable "db_name" {
  type        = string
  description = "Name of the Wordpress database to create in RDS"
  default     = "wordpress"
}

variable "db_username" {
  type        = string
  description = "Master username for RDS"
  default     = "admin"
}

variable "db_password" {
  description = "RDS DB password. Provide via TF_VAR_db_password or tfvars"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  type        = string
  description = "RDS Instance size"
  default     = "db.t3.micro"
}

variable "db_engine_version" {
  type        = string
  description = "RDS engine version"
  default     = "8.0"
}

variable "private_key_path" {
  type        = string
  description = "Local path to your PEM key file for SSH access (not used by Terraform directly)."
  default     = "~/Desktop/key/Wordpress-key.pem"
}

variable "key_name" {
  type        = string
  description = "Name of the existing EC2 key pair in AWS (used when launching the instance)"
  default     = "Wordpress-key"
}

variable "allocated_storage" {
  type    = number
  default = 20
}