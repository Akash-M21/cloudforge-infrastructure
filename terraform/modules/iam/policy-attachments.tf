#EKS Cluster Policy

resource "aws_iam_role_policy_attachment" "cluster_policy" {

  role = aws_iam_role.eks_cluster.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"

}

#Worker Node Policy

resource "aws_iam_role_policy_attachment" "worker_node" {

  role = aws_iam_role.eks_nodes.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"

}

#ECR Read Only

resource "aws_iam_role_policy_attachment" "ecr" {

  role = aws_iam_role.eks_nodes.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"

}

#CNI Policy

resource "aws_iam_role_policy_attachment" "cni" {

  role = aws_iam_role.eks_nodes.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"

}
