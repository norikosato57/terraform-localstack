# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group

# https://developer.hashicorp.com/terraform/language/import

# v1.5.0くらいから
import {
  to = aws_vpc.default
  id = "vpc-b936dedd"
}

resource "aws_vpc" "default" {
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.default.id

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.egress_protocol
    cidr_blocks      = var.egress_cider_blocks
    ipv6_cidr_blocks = var.egress_ipv6_cidr_blocks
  }

  tags = var.tags
}
