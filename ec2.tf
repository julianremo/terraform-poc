resource "aws_instance" "webservers" {
  count = length(var.subnets_cidr)
  ami = var.ami
  instance_type = var.instance_type
  security_groups = [aws_security_group.terra_sg.id]
  subnet_id = aws_subnet.terra_pub_sub[count.index].id
  user_data = file("install_httpd.sh")
  tags = {
    Name = "webservers${count.index}"
  }
}