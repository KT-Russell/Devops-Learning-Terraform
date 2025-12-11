output "public_ip" {
    description = "Public IP of WordPress EC2 Instance"
    value = aws_instance.wordpress.public_ip
}