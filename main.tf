# --------------------------
# Terraform configuration
# --------------------------
terraform {
  required_version = ">=0.13"
  # required_providersは=使わない！このように、項目によって形式がバラバラなので、ドキュメントを要チェック
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }

  }
}

# --------------------------
# Provider
# --------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

# --------------------------
# Variables
# --------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}