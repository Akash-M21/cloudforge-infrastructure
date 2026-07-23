# AWS Load Balancer Controller Module

## Overview

This module installs the AWS Load Balancer Controller into an existing Amazon EKS cluster using IRSA (IAM Roles for Service Accounts).

## Features

- IAM Policy
- IAM Role for Service Accounts (IRSA)
- OIDC Integration
- Helm Deployment
- Reusable Terraform Module

## Inputs

- project_name
- environment
- cluster_name
- cluster_oidc_issuer
- aws_region

## Outputs

- IAM Role ARN
- Helm Release Name
