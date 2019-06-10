# Creates AWS Security Group
resource "aws_security_group" "allow-ssh" {
  name = "allow-ssh"
  description = "Security group that allows ssh and all egress traffic"
  # Outbound traffic rule which allow all port and all protocol to any IP Address
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Inbound traffic rule which allow port 22 and protocol TCP from any IP
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  } 
  tags = {
    Name        = "allow-ssh"
  }
}