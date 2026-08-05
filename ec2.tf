resource "aws_instance" "web" {
  ami           = "ami-0f8ca728008ff5af4" # update with valid AMI
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_a.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = { Name = "project-ec2" }
}
