###############################################################################
# AWS Account Information
###############################################################################

data "aws_caller_identity" "current" {}

###############################################################################
# IAM Trust Policy for IRSA
###############################################################################

data "aws_iam_policy_document" "alb_controller_assume_role" {

  statement {

    effect = "Allow"

    actions = [
      "sts:AssumeRoleWithWebIdentity"
    ]

    principals {

      type = "Federated"

      identifiers = [
        replace(
          var.cluster_oidc_issuer,
          "https://",
          "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/"
        )
      ]
    }

    condition {

      test = "StringEquals"

      variable = "${replace(var.cluster_oidc_issuer, "https://", "")}:sub"

      values = [
        "system:serviceaccount:kube-system:aws-load-balancer-controller"
      ]

    }

  }

}

###############################################################################
# IAM Role
###############################################################################

resource "aws_iam_role" "alb_controller" {

  name = "${local.project}-alb-controller-role"

  assume_role_policy = data.aws_iam_policy_document.alb_controller_assume_role.json

  tags = local.common_tags

}

###############################################################################
# Attach IAM Policy
###############################################################################

resource "aws_iam_role_policy_attachment" "alb_controller" {

  role       = aws_iam_role.alb_controller.name
  policy_arn = aws_iam_policy.alb_controller.arn

}
