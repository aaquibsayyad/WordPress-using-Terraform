resource "aws_instance" "wordpress" {

  ami           = "ami-0c55b159cbfafe1f0" // Amazon Linux 2 LTS

  instance_type = var.instance_type

  key_name      = "my_key_pair"

  user_data     = file("user_data.sh")

  vpc_security_group_ids = [aws_security_group.wordpress.id]

  tags = {

    Name = var.app_name

  }

}

