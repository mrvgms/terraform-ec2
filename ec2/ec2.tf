# Creates a new instance of the specified Amazon linux (see ec2.tfvars to change any below value)
# t2.small with an AWS Tag environment "task"


resource "aws_instance" "task3" {
  ami             = var.ami
  instance_type   = var.instance_type
  count           = var.instance_count
  security_groups = var.security_groups
  key_name        = aws_key_pair.deployer.id
  user_data       = file("port.sh")
  tags            = var.tags
}



