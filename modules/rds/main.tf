resource "aws_db_subnet_group" "wordpress_db_subnet_group" {
  name = "wordpress-db-subnet-group"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "wordpress-db-subnet-group"
  }

}

resource "aws_db_instance" "wordpress_db" {
  identifier = "wordpress-db"
  allocated_storage = var.allocated_storage
  engine = "mysql"
  engine_version = var.db_engine_version
  instance_class = var.db_instance_class
  username = var.db_username
  password = var.db_password
  db_name = var.db_name
  multi_az = var.multi_az
  publicly_accessible = false
  skip_final_snapshot = true
  vpc_security_group_ids = [var.db_sg_id]
  db_subnet_group_name = aws_db_subnet_group.wordpress_db_subnet_group.name

  tags = {
    Name = "wordpress-db"
  }
}



