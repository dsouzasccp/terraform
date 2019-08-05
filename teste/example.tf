resource "aws_instance" "example" {
  ami           = "ami-c80b0aa2"
  instance_type = "t2.micro"
}