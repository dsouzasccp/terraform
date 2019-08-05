variable "region" {
  type        = "string"
  description = "Região no AWS onde nossos recursos estarão."
  default     = "us-east-1"
}

variable "vpc" {
  type        = "string"
  description = "Vpc que será usada."
  default     = "vpc-5b11be20"
}

variable "project_name" {
  type        = "string"
  description = "Nome do projeto"
}

variable "i_from_port" {
  type        = "string"
  description = "Ingress Origin port to receive connections."
}

variable "i_to_port" {
  type        = "string"
  description = "Ingress Destination port to pass connections to."
}

variable "i_ip_range" {
  type        = "list"
  description = "Ingress Ip range that will be able to connect to this server."
}

variable "e_from_port" {
  type        = "string"
  description = "Egress Origin port to receive connections from."
}

variable "e_to_port" {
  type        = "string"
  description = "Destination port to pass connections to."
}

variable "e_ip_range" {
  type        = "list"
  description = "Ip range that will be able to connect to this server."
}

variable "sg_tags" {
  type        = "map"
  description = "Tags a serem aplicadas no security group"
}
