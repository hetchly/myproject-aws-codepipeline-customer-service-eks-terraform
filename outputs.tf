# ECR Repository
output "aws_ecr_repository_arn" {
  value = aws_ecr_repository.ecr_repository.arn
}

output "aws_ecr_repository_name" {
  value = aws_ecr_repository.ecr_repository.name
}

output "aws_ecr_repository_registry_id" {
  value = aws_ecr_repository.ecr_repository.registry_id
}

output "aws_ecr_repository_repository_url" {
  value = aws_ecr_repository.ecr_repository.repository_url
}

# S3 Bucket for Artifacts
output "aws_s3_bucket_id" {
  value = aws_s3_bucket.build_artifact_bucket.id
}

output "aws_s3_bucket_arn" {
  value = aws_s3_bucket.build_artifact_bucket.arn
}

# CodeBuild
output "codebuild_service_role_arn" {
  value = aws_iam_role.codebuild_service_role.arn
}

output "codebuild_project_arn" {
  value = aws_codebuild_project.build_project.arn
}

# CodePipeline
output "codepipeline_service_role_arn" {
  value = aws_iam_role.codepipeline_service_role.arn
}

output "codepipeline_pipeline_arn" {
  value = aws_codepipeline.codepipeline.arn
}