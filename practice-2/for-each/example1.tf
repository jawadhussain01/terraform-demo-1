resource "aws_security_group" "demoSG" {
  name        = "demoSG"
  description = "Created to practice for_each"
  dynamic "ingress" {
    for_each = var.target_ports
    iterator = item
    content {
      from_port   = item.value.os_port
      to_port     = item.value.app_port
      protocol    = item.value.protocol
      cidr_blocks = item.value.cidr_blocks
    }
  }
  tags = local.common_tags
}

locals {
  common_tags = {
    Name = "demoSG"
    type = "backend"
  }
}
