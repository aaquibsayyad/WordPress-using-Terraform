resource "aws_security_group" "wordpress" {

  name_prefix = "wordpress"

}

resource "aws_security_group_rule" "wordpress_ingress" {

  type        = "ingress"

  from_port   = 0

  to_port     = 65535

  protocol    = "tcp"

  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.wordpress.id

}

resource "aws_security_group_rule" "wordpress_egress" {

  type        = "egress"

  from_port   = 0

  to_port     = 65535

  protocol    = "tcp"

  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.wordpress.id

}

resource "aws_security_group_rule" "rds_ingress" {

  type        = "ingress"

  from_port   = 3306

  to_port     = 3306

  protocol    = "tcp"

  security_group_id = aws_security_group.wordpress.id

  source_security_group_id = aws_security_group.wordpress.id

}

