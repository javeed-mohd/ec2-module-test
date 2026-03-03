# project/project_name can be used as you wish(Not necessarily it should be same but it gives the exact default value provided).
variable "project_name" {
    default  = "roboshop"
}

variable "env" {
    default  = "dev"
}

variable "sg_ids" {
    default  = ["sg-0bdbfe5495a912910"]
}

variable "component" {
    default  = "catalogue"
}