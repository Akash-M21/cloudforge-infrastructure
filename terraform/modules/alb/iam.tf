resource "aws_iam_policy" "alb_controller" {

  name        = "${local.project}-alb-controller-policy"
  description = "IAM Policy for AWS Load Balancer Controller"

  policy = file("${path.module}/policies/aws-load-balancer-controller-policy.json")

  tags = local.common_tags

}
