module "ec2" {
    source          = "../terraform-aws-instance"
    project         = "roboshop"
    environment     = "dev"
    ami_id          = "ami-0220d79f3f480ecf5"
    instance_type   = "t3.large"
    sg_ids          = ["sg-0bdbfe5495a912910"]
    tags = {
        Name        = "roboshop-dev-catalogue"
    }
}