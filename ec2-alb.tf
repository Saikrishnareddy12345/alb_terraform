resource "aws_instance" "insta1" {
  ami           = "ami-052cef05d01020f1d"
  instance_type = "t2.micro"
  key_name="linux"
  subnet_id   = "subnet-009c4393eb1dd5610"
  security_groups = [aws_security_group.ec2_alb_sg.id]
  user_data = <<EOF
    #!/bin/bash
    yum update -y
    yum install httpd -y
    systemctl start httpd
    systemctl enable httpd
    mkdir -p /var/www/html/cricket/
    echo "this is cricket" >/var/www/html/cricket/index.html
    EOF



  tags = {
    Name = "cricket1"
  }
}

resource "aws_instance" "insta2" {
  ami           = "ami-052cef05d01020f1d"
  instance_type = "t2.micro"
  key_name="linux"
  subnet_id   = "subnet-0865e5427e04dbafc"
  security_groups = [aws_security_group.ec2_alb_sg.id]
  user_data = <<EOF
    #!/bin/bash
    yum update -y
    yum install httpd -y
    systemctl start httpd
    systemctl enable httpd
    mkdir -p /var/www/html/football/
    echo "this is cricket" >/var/www/html/football/index.html
    EOF



  tags = {
    Name = "football1"
  }
}