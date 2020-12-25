#imports public key of the user to aws, to be able to ssh to the created instances

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
}