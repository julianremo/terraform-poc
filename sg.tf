resource "aws_security_group" "terra_sg" {
  name = "terra-sg"
  description = "Allow SSH & HTTP"
  vpc_id      = aws_vpc.terra_vpc.id

  ingress {
    description = "ssh"
    from_port   = 20
    to_port     = 20
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terra-sg"
  }
}