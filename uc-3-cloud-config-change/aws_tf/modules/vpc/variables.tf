terraform {
  # Optional attributes and the defaults function are
  # both experimental, so we must opt in to the experiment.
  # experiments = [module_variable_optional_attrs]
  required_version = ">=1.3.9"
}

variable "project_name_prefix" {
   type = string    # Name of project. This name is prefixed for all resources in the name field created via Terraform
   default = "dso"
}

variable "region" {
    type = string   # Name of region where resources are created
    default = "us-west-2"
}

variable "vpcname"  {
  type = string
  default = "vpc_codebuild"
}

variable "igname"  {
  type = string
  default = "ig_codebuild"
}

variable "subnet_name"  {
  type = string
  default = "codebuild_subnet"
}