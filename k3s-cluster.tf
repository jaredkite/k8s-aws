# Create a VPC
resource "aws_vpc" "vpc-k3s-cluster" {
  cidr_block = "10.0.0.0/16"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "k3s-node" {
  for_each      = var.k3s-nodes
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "cluster-node"
  }
}