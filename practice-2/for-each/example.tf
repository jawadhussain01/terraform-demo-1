/*
resource "aws_instance" "demoEC2" {
  ami           = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
  for_each      = toset(["one", "two", "three"])
  tags = {
    Name = "terraform_${each.key}"
  }
}
*/