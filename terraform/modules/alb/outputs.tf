output "alb_controller_role_arn" {

  description = "IAM Role ARN for AWS Load Balancer Controller"

  value = aws_iam_role.alb_controller.arn

}

output "helm_release_name" {

  description = "Helm Release Name"

  value = helm_release.aws_load_balancer_controller.name

}
