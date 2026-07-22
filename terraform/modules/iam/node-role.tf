resource "aws_iam_role" "eks_nodes" {

  name = "${local.project}-eks-node-role"

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"

      }

    ]

  })

  tags = local.common_tags

}
