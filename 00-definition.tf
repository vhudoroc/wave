provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
  profile = "wave-careers"
}

variable "mcount" {
	default = "1"
}
variable "app-name" {
	default = "vladimir"
}

variable "vm-type" {
  default = "t2.micro"
}

variable "sec-gr-common" {
  default = {
      "us-east-1" = "default"
  }
}
variable "ami-id" {
  default = {
      "us-east-1" = "ami-5ac2cd4d"
  }
}
variable "elb-name" {
  default = {
      "us-east-1" = "lb-vladimir"
  }
}
