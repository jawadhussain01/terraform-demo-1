module "mySG" {
  source = "../../practice-2/for-each"
  target_ports = [
    { os_port = 22, app_port = 3501, protocol = "TCP", cidr_blocks = ["0.0.0.0/0"] },
    { os_port = 21, app_port = 3553, protocol = "TCP", cidr_blocks = ["0.0.0.0/0"] }
  ]
}
module "myEC2" {
  source                 = "../EC2"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.mySG.sg_id]
}
