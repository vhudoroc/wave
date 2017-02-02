resource "aws_security_group" "us-east-1" {
  provider = "aws.us-east-1"
  name = "${var.app-name}"
  description = "terraform created"
  vpc_id = "vpc-677ea503"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    self        = true
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  // Allow all outbound
  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
