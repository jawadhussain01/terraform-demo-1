data "aws_ami" "my-ami" {
  most_recent = true
  filter {
    name   = "name"
    values = ["RHEL-9.2.0_HVM-*"]
  }
  filter {
    name   = "owner-id"
    values = ["309956199498"]
  }
}
variable "instance_type" {
  type        = string
  description = "ami id"
}
variable "env_type" {
  type    = string
  default = "count depend on env type"
}