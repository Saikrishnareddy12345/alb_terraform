resource "aws_lb_target_group" "target_group1" {
  name     = "tg-1"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-092ba78e07b5304d1"
}

# resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"
# }


resource "aws_lb_target_group" "target_group2" {
  name     = "tg-2"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-092ba78e07b5304d1"
}

# resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"
# }