# edit tfvars file according to your need, no need to edit variables.tf

variable "ami_id" {
    description = "ami for instance"
}

variable "instance_type" {
    description = "input instance size"
}

variable "key_name" {
    description = "key pair to use"  
}

variable "region" {
    description = "the region you want to use"
  
}