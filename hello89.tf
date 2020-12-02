provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

resource "aws_instance" "html_servers" {
  ami           = "ami-0ce1e3f77cd41957e"
  instance_type = "t2.micro"
  key_name      = "devop22"

  count = "1"

  tags = {
    Name = "hellohtml"
  }
}
