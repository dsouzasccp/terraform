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
