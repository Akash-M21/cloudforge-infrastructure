output "repository_urls" {
  description = "ECR Repository URLs"

  value = {
    for repo_name, repo in aws_ecr_repository.repositories :
    repo_name => repo.repository_url
  }
}
