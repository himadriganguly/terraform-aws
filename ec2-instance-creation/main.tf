/* 
Provider defines the Platform Terraform will interact with.
In this example aws is the provider platform where Terraform
will create the resources.
*/
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
  version = "~> 2.8"
}

# Creates EC2 instance
resource "aws_instance" "web" {
  # The OS image that will be used while creating the EC2 instance
  ami           = "${lookup(var.amis, var.region, "ami-024a64a6685d05041")}"
  
  # The type of instance selection for the EC2 instance
  instance_type = "t2.micro" 
  
  # Attach the "deployer-key" Key Pair with this instance
  key_name      = "deployer-key"
  
  # Attach the security group "allow-ssh" with this instance
  vpc_security_group_ids = ["${aws_security_group.allow-ssh.id}"] 
  
  tags = {
    Name = "Server"
  }
}

# Creates AWS Key Pair
resource "aws_key_pair" "deployer" {
  key_name    = "deployer-key"
  public_key  = "${file("${var.path_to_public_key}")}"
}

output "public-ip" {
  value = aws_instance.web.public_ip
}

output "private-ip" {
  value = aws_instance.web.private_ip
}

output "key-name" {
  value = aws_instance.web.key_name
}

