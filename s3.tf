resource "aws_s3_bucket" "project_bucket" {
  bucket = "${var.project_name}-bucket-${random_id.suffix.hex}"
  force_destroy = true

  tags = {
    Name        = "${var.project_name}-bucket"
    Environment = "Dev"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}
