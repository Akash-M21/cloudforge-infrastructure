# cloudforge-infrastructure
Enterprise Terraform Infrastructure for CloudForge — Modular Infrastructure as Code (IaC) provisioning AWS networking, EKS, RDS, ECR, Redis, ALB, IAM, and secure remote state backend.

cp backend.hcl.example backend.hcl

# Edit backend.hcl with your bucket name

terraform init -backend-config=backend.hcl
