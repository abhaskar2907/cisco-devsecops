# simple codebuild project
resource "aws_codebuild_project" "codebuild_project" {
  name          = "${var.project_name_prefix}-${var.codebuild_name}"
  description   = "Codebuild to push ecr container"
  build_timeout = "120"
  service_role = aws_iam_role.role.arn

  artifacts {
    type = "NO_ARTIFACTS"
  }

  source {
    type            = "CODECOMMIT"
    location        = lookup(var.codebuild_params, "GIT_REPO")
  }
  source_version = "refs/heads/main-dev"

  environment {
    image                       = lookup(var.codebuild_params, "IMAGE")
    type                        = lookup(var.codebuild_params, "TYPE")
    compute_type                = lookup(var.codebuild_params, "COMPUTE_TYPE")
    image_pull_credentials_type = lookup(var.codebuild_params, "CRED_TYPE")
    privileged_mode             = true

  }

  logs_config {
    cloudwatch_logs {
      group_name  = "log-group"
      stream_name = "log-stream"
    }

    s3_logs {
      status = "DISABLED"
    }
  }
}
