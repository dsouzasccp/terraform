provider "aws" {
  region = "${var.region}"
}

data "aws_subnet_ids" "all" {
  vpc_id = "${var.vpc}"
}

resource "aws_security_group" "security_group" {
  name = "Sg_${var.project_name}"

  vpc_id        = "${var.vpc}"

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

resource "aws_instance" "server" {
  ami             =   "${var.ami}"
  instance_type   =   "${var.instance_type}"
  subnet_id       =   "${element(data.aws_subnet_ids.all.ids, 1)}"

  user_data       =   "${var.user_data}"

  security_groups =   ["${aws_security_group.security_group.id}"]

  tags            =   "${var.instance_tags}"
}

output "instance_id" {
  value = "${aws_instance.server.id}"
}

# resource "aws_eip" "ip" {
#   instance = "${aws_instance.server.id}"
#   vpc      = true
# }
