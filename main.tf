resource "aws_instance" "Server1" {
  ami           = var.ami
  instance_type = var.instance_type
  //security_groups = ["web"]
  security_groups = [aws_security_group.sg.name]
  key_name        = var.key_name
  tags = {
    Name = "Server1"
    Team = "DevOps"
    env  = "Dev"
  }
  user_data = file("install.sh")
}