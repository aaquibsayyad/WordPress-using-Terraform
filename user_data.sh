#!/bin/bash

sudo yum update -y

sudo amazon-linux-extras install docker -y

sudo service docker start

sudo usermod -a -G docker ec2-user

sudo docker run -d --name wordpress --restart always -p 80:80 -e WORDPRESS_DB_HOST=${aws_db_instance.wordpress.endpoint} -e WORDPRESS_DB_NAME=${var.db_name}

