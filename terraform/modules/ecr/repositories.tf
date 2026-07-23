resource "aws_ecr_repository" "repositories" {

  for_each = toset(var.repositories)

  name = "${lower(local.project)}/${lower(each.value)}"

  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = local.common_tags
}
