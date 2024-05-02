variable "region" {
  description = "Region"
  type = string
  default = "us-west-2"
}

variable "project_name_prefix" {
   type = string    # Name of project. This name is prefixed for all resources in the name field created via Terraform
   default = "dso"
}

variable "prop_tags" {
  description = "Tags"
  type = map(string)
  default = {
      Project = "Codebuild container push"
      IaC = "Terraform"
  }
}

variable "account_id" {
  description = "AWS Account ID"
  type = string
}

variable "codebuild_name" {
  description = "Codebuild container push"
  type = string
  default = "Codebuild-container-push"
}

variable "codebuild_params" {
  description = "Codebuild parameters"
  type = map(string)
}

variable "environment_variables" {
  description = "Environment variables"
  type = map(string)
}