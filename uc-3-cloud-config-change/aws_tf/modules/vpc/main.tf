resource "aws_vpc" "vpc_codebuild" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "${var.project_name_prefix}-${var.vpcname}"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_codebuild.id

  tags = {
    Name = "${var.project_name_prefix}-${var.igname}"
  }
}

resource "aws_subnet" "codebuild_subnet" {
  vpc_id     = aws_vpc.vpc_codebuild.id
  cidr_block = "10.1.1.0/24"

  tags = {
    Name = "${var.project_name_prefix}-${var.subnet_name}"
  }
}

output "vpc_id" {
  value = aws_vpc.vpc_codebuild.id
}