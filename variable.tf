variable "cloudflare_api_token" {
  type = string
}

variable "cloudflare_account_id" {
  type = string
}

variable "email_address" {
  type = string
}

variable "aws_region" {
  default = "ap-northeast-1"
}

variable "aws_ec2_ami" {
  # Amazon Linux 2 Kernel 5.10 AMI 2.0.20221004.0 x86_64 HVM gp2
  default = "ami-0de5311b2a443fb89"
}

variable "name" {
  default = "ztna"
}
