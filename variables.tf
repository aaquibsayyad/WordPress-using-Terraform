variable "app_name" {

  description = "The name of the WordPress application"

  type        = string

  default     = "wordpress"

}

variable "instance_type" {

  description = "The instance type of the EC2 instance"

  type        = string

  default     = "t4g.small"

}

variable "ami" {

  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance"

  type        = string

  default     = "ami-07d3a50bd29811cd1"

}

variable "region" {

  description = "The AWS region where the resources will be created"

  type        = string

  default     = "ap-south-1"

}

variable "db_name" {

  description = "The name of the WordPress database"

  type        = string

  default     = "wordpress"

}

variable "db_username" {

  description = "The username for accessing the WordPress database"

  type        = string

  default     = "wordpress"

}

variable "db_password" {

  description = "The password for accessing the WordPress database"

  type        = string

  default     = "supersecret"

}

variable "eip_name" {

  description = "The name of the Elastic IP address"

  type        = string

  default     = "wordpress-eip"

}

variable "domain_name" {

  description = "The domain name to associate with the WordPress application"

  type        = string

  default     = ""

}

variable "email" {

  description = "The email address to use for Let's Encrypt certificate registration"

  type        = string

  default     = ""

}

