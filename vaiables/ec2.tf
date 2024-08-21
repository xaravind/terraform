# resource <resource-type> <resource-name>
resource "aws_instance" "db" {
  ami                    = var.image_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type          = var.instance_type
  tags                   = var.tags
}

resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.description

  tags = {
    Name      = "allow_ssh"
    createdBY = "Aravind"
  }

  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.protocol
    cidr_blocks = var.allowed_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.allowed_cidr
  }
}
