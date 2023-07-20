output "ami_id_amzn_lnx" {
  value = data.aws_ami.my-ami.id
}
output "public_ip" {
  value = aws_instance.demoEC2[*].public_ip
}
