data "local_file" "assumeRole_policy" {
  filename = "policy/assumeRole.json"
}

data "local_file" "policy" {
  filename = "policy/policy.json"
}


resource "aws_iam_role" "role" {
  name               = "${var.project_name_prefix}-codebuild_role"
  assume_role_policy = data.local_file.assumeRole_policy.content
}

resource "aws_iam_role_policy" "codebuild_policy" {
  role = aws_iam_role.role.name
  policy = replace(replace(data.local_file.policy.content, "ACCOUNT_ID", var.account_id), "CODEBUILD_NAME", var.codebuild_name)
}