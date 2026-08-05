resource "aws_db_subnet_group" "rds_subnet" {
  name       = "rds-subnet-group"
  subnet_ids = [aws_subnet.public_a.id, aws_subnet.public_b.id]
}


resource "aws_db_instance" "rds" {
  allocated_storage      = 20
  engine                 = "mysql"
  instance_class         = "db.t3.micro"
  db_name                = "projectdb"
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]  # Reference SG here
  skip_final_snapshot    = true
}
