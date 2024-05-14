variable "ami_id" {
    type = string
    default = "ami-090252cbe067a9e58"
  
}
variable "security_group_ids" {
    type = list
    default = ["sg-00fdfc2b0e8a3e6e9"]
}
variable "instance_type" { #We can override variables in module {}...
    default = "t2.micro"
  
}
variable "tags" { # Tags are not mandatory
    type = map #Overriding in module
    default = {} # This means empty, And it will give promt to Enter value: So, not mandatory
}