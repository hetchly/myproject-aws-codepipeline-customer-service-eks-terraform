# Terraform module to provision a CI/CD Pipeline using AWS Managed Services (Customer Service)

## This creates the following resources:
- ECR
- S3 Bucket for Artifacts
- Service Role for CodeBuild
- CodeBuild Project
- Service Role for CodePipeline
- CodePipeline Pipeline

## CI/CD Pipline Usage
1. Developers commit code to an Github repository and create pull requests to review proposed changes to the production code. When the pull request is merged into the master branch in the Github repository, AWS CodePipeline automatically detects the changes to the branch and starts processing the code changes through the pipeline.
2. AWS CodeBuild packages the code changes as well as any dependencies and builds a Docker image. Optionally, another pipeline stage tests the code and the package, also using AWS CodeBuild.
3. The Docker image is pushed to Amazon ECR after a successful build and/or test stage.
4. AWS CodePipeline invokes an AWS Lambda function that includes the Kubernetes Python client as part of the function’s resources. The Lambda function performs a string replacement on the tag used for the Docker image in the Kubernetes deployment file to match the Docker image tag applied in the build, one that matches the image in Amazon ECR.
5. After the deployment manifest update is completed, AWS Lambda invokes the Kubernetes API to update the image in the Kubernetes application deployment.
6. Kubernetes performs a rolling update of the pods in the application deployment to match the docker image specified in Amazon ECR. The pipeline is now live and responds to changes to the master branch of the CodeCommit repository.

## Prerequisites
- Provision an S3 bucket to store Terraform State and DynamoDB for state-lock
using https://github.com/jrdalino/aws-tfstate-backend-terraform
- Lambda Function to deploy to EKS https://github.com/jrdalino/aws-lambda-deploy-ecr-to-eks-nodejs-terraform

## Usage
- Replace variables in terraform.tfvars ** Note: <REPLACE_ME> with your github_oauth_token
- Replace variables in state_config.tf
- Initialize, Review Plan and Apply
```
$ terraform init
$ terraform plan
$ terraform apply
```
- Note: If you have changes to this repo, delete your github_oauth_token before running git push!

## (Optional) Cleanup
```
$ terraform destroy
```

## Inputs
| Name | Description |
|------|-------------|

## Outputs
| Name | Description |
|------|-------------|