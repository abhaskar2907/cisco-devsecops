provider "aws" {
  region = "us-west-2"
}

module "vpcmodule" {
  source = "./vpc"
  vpcname = "codebuild-vpc"
}

module "ecrmodule" {
  source = "./ecr"
  reponame = "devsecops"
}

module "codebuildmodule" {
  source = "./codebuild"
}