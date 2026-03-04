# module "ec2" {
#     source          = "../terraform-aws-instance"
#     project         = "roboshop"
#     environment     = "dev"
#     ami_id          = "ami-0220d79f3f480ecf5"
#     instance_type   = "t3.large"
#     sg_ids          = ["sg-0bdbfe5495a912910"]
#     tags = {
#         Name        = "roboshop-dev-catalogue"
#     }
# }


module "ec2" {
    source          = "../terraform-aws-instance" # In projects, we use "git::https://github.com/javeed-mohd/terraform-aws-instance.git?ref=main", to directly get it from git if someone updated...
    project         = var.project_name # project/project_name can be used as you wish(Not necessarily it should be same but it gives the exact default value provided).
    environment     = var.env
    ami_id          = data.aws_ami.joindevops.id
    instance_type   = "t3.large"
    sg_ids          = var.sg_ids
    tags = {
        Name        = "${var.project_name}-${var.env}-${var.component}"
        Component   = var.component
    }
}