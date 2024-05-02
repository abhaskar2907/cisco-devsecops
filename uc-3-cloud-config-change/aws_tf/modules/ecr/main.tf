variable "reponame"  {
  type = string
  default = "devsecops"
}

resource "aws_ecr_repository" "ecr" {
  name                 = var.reponame
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}