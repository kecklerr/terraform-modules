tags = {
  "Name" = "web server dev"
  "environment" = "dev"
  "created_by" = "raymond@kecklers.com"
}

vpc_id = "vpc-99db8ee1"

vpc_security_group_ids = "sg-3fa25876"

ec2_count = 2

key_name = "raykecklerkeypair"

ebs-1_create = 1
ebs-1_device_name = ["/dev/xvdd"]