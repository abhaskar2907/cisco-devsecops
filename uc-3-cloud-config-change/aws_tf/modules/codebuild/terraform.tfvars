account_id = ""
codebuild_params = {
      "NAME" = "ee_codebuild"
      "GIT_REPO" = ""
      "IMAGE" = ""
      "TYPE" = "LINUX_CONTAINER"
      "COMPUTE_TYPE" = "BUILD_GENERAL1_SMALL"
      "CRED_TYPE" = "SERVICE_ROLE"
  }

environment_variables = {
      "AWS_DEFAULT_REGION" = "us-west-2"
      "AWS_ACCOUNT_ID" = ""
      "IMAGE_REPO_NAME" = "devsecops"
      "IMAGE_TAG" = "latest"
  }