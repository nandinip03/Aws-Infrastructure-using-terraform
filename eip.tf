resource "aws_eip" "web" {
  instance = aws_instance.web.id   # attach directly to EC2 instance
  tags = {
    Name = "Web EIP"
  }
}
