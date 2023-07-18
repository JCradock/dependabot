module "ec2_instance" {
  source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance?ref=v5.1.0"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "ec2_instance_1" {
  source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance?ref=v5.1.0"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
