# Terraform Modules...

resource "aws_instance" "db" {

    ami = var.ami_id
    vpc_security_group_ids =  var.security_group_ids
    instance_type = var.instance_type

    tags = var.tags
}

#We didn't write provider.tf file --> Creating a seperate Module in another folder (terraform-ec2-test) takes provider from this

#This folder is for Deployment, contains code only --> If any (Provider calls)  then only execute...