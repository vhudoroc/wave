resource "aws_instance" "main-us-east-1" {
        count = "${var.mcount}"
        provider = "aws.us-east-1"
        ami = "${lookup(var.ami-id,"us-east-1")}"
        instance_type = "${var.vm-type}"

        vpc_security_group_ids = ["${aws_security_group.us-east-1.id}"]
        key_name = "vladimir"
        tags = {
                Name = "${var.app-name}${count.index+1}"
        }

        connection {
                type = "ssh"
                user = "ubuntu"
        }
        provisioner "file" {
          source = "bootstrap.sh"
          destination = "/tmp/bootstrap.sh"
        }
        provisioner "remote-exec" {
          inline = [
            "sudo chmod +x /tmp/bootstrap.sh",
            "sudo /tmp/bootstrap.sh ${var.app-name}${count.index+1}-us-east-1"

          ]
        }
}
