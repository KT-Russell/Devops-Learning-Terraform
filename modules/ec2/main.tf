#EC2 Instance - WordPress
resource "aws_instance" "wordpress" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.web_sg_id]
  associate_public_ip_address = true

  # Cloud-init for WordPress setup
  user_data = templatefile("${path.root}/cloud-init.yaml", {
    db_name   = var.db_name
    db_user   = var.db_username
    db_passwd = var.db_password
    db_host   = var.db_host
  })

  tags = {
    Name = "wordpress-ec2"
  }
}
