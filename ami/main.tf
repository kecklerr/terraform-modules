resource "aws_ami_copy" "encrypted_ami" {
  name              = "encrypted-ami"
  description       = "Encrypted ami from choosen ami"
  source_ami_id     = "${data.aws_ami.ami.id}"
  source_ami_region = "${var.region}"
  encrypted         = "true"

  tags {
    Name = "encrypted ami from ${data.aws_ami.ami.id}"
  }
}

data "aws_ami" "encrypted_ami" {
  most_recent = true

  filter {
    name = "image-id"

    values = [
      "${aws_ami_copy.encrypted_ami.id}",
    ]
  }

  owners = [
    "self",
  ]
}

data "aws_ami" "ami" {
  most_recent = true

  filter {
    name = "name"

    values = [
      "${var.ami_name}",
    ]
  }

  filter {
    name = "virtualization-type"

    values = [
      "${var.virt_type}",
    ]
  }

  filter {
    name = "owner-alias"

    values = [
      "${var.owner_alias}",
    ]
  }
}
