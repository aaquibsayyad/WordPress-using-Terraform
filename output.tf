output "ec2_public_ip" {
  value = aws_eip.wordpress.public_ip
}

output "wordpress_url" {
  value = "http://${aws_eip.wordpress.public_ip}"
}
