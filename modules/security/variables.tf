variable "vpc_id" {
  description = "VPC ID for the security groups"
  type = string
}

variable "my_ip" {
  description = "my person public IP for SSH (CIDR format)"
  type = string
}