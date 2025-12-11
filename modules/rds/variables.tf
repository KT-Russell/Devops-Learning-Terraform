variable "vpc_id" {
  type = string
  description = "The VPC ID where the RDS instance is deployed"
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "db_name" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
}

variable "db_instance_class" {
  type = string
}

variable "db_engine_version" {
  type = string
}

variable "db_sg_id" {
  type = string
}

variable "multi_az" {
  description = "Enable multi-az deployment for RDS (set to true for production)"
  type = bool
  default = false
}

variable "allocated_storage" {
  description = "The amount of storage (in GB) to allocate for the RDS instance"
  type = number
  default = 20
}