resource "aws_instance" "demoEC2" {
  ami           = data.aws_ami.my-ami.id
  instance_type = var.instance_type
  count         = var.env_type != "prod" ? 3 : 0
  tags          = local.ec2_tags
}

locals {
  ec2_tags = {
    support  = "SA"
    function = "backend"
    Name     = "test-env"
  }
}