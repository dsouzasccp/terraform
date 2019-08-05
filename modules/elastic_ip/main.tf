provider "aws" {
  region = "${var.region}"
}

data "aws_subnet_ids" "all" {
  vpc_id = "${var.vpc}"
}

resource "aws_eip" "ip" {
  instance = "module.instances.instance_id"
  vpc      = true
}
