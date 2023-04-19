resource "aws_db_instance" "wordpress" {

  engine            = "mysql"

  instance_class    = "db.t4g.micro"

  name              = var.db_name

  username          = var.db_username

  password          = var.db_password

  allocated_storage = 20

  vpc_security_group_ids = [aws_security_group.wordpress.id]

  publicly_accessible = false

  tags = {

    Name = "${var.app_name}-db"

  }

}





