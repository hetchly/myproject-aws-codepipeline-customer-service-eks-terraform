# General
aws_region  = "ap-southeast-1"
aws_account = "707538076348"

# Github Repository
github_repo_name = "myproject-customer-service-python"
github_oauth_token = "<REPLACE_ME>"

# ECR Repository
ecr_repo_name = "myproject-customer-service"

# S3 Bucket for Artifacts
s3_bucket_artifacts_name = "707538076348-myproject-customer-service-codepipeline"

# CodeBuild
codebuild_service_role_name        = "myproject-customer-service-codebuild-service-role"
codebuild_service_role_policy_name = "myproject-customer-service-codebuild-service-role-policy"
codebuild_project_name             = "myproject-customer-service-codebuild"

# CodePipeline
codepipeline_service_role_name        = "myproject-customer-service-codepipeline-service-role"
codepipeline_service_role_policy_name = "myproject-customer-service-codepipeline-service-role-policy"
codepipeline_pipeline_name            = "myproject-customer-service-codepipeline"

# Lambda
lambda_function_name = "deploy-ecr-to-eks-nodejs"