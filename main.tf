resource "aws_instance" "web" {
  ami           = var.os
  instance_type = var.size

  tags = {
    Name = var.name
  }
}

resource "github_repository" "example" {
  name        = "Terraform_demo"
  description = "This repo is created using Terraform"

  visibility = "public"
}
#Creating S3 bucket with CLI response
resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
}

resource "aws_iam_user" "myuser" {
    name = "${var.username}-user"
}

#terraform refresh in case of output display issues
output "IPaddress" {
  value       = aws_instance.web.public_ip
}
 
output "DNS" {
  value       = aws_instance.web.public_dns
}
 