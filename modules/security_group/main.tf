provider "aws" {
  region = "${var.region}"
}

resource "aws_security_group" "security_group" {
  name = "Sg_${var.project_name}"

  vpc_id = "${var.vpc}"

  ingress {
    from_port   = "${var.i_from_port}"
    to_port     = "${var.i_to_port}"
    protocol    = "tcp"
    cidr_blocks = "${var.i_ip_range}"
  }

  egress {
    from_port   = "${var.e_from_port}"
    to_port     = "${var.e_to_port}"
    protocol    = "-1"
    cidr_blocks = "${var.e_ip_range}"
  }

  tags = "${var.sg_tags}"
}

