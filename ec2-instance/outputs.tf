output "ec2_public" {
    value = aws_instance.terraform_instance.public_dns
}