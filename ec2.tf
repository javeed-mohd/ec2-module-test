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
    source          = "../terraform-aws-instance"
    project         = var.project_name # project/project_name can be used as we wish(Not necessarily it should be same but it gives the exact value required.)
    environment     = var.env
    ami_id          = "ami-0220d79f3f480ecf5"
    instance_type   = "t3.large"
    sg_ids          = var.sg_ids
    tags = {
        Name        = "${var.project_name}-${var.env}-${var.component}"
    }
}