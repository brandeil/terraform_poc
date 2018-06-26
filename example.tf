provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "ec2" {
  ami           = "ami-a4dc46db"
  instance_type = "t2.micro"
  subnet_id     = "subnet-ae3bfdf3"
  key_name      = "MyEC2KeyPair"

  tags {
    Name = "${var.environment}-xyz"
  }
}
