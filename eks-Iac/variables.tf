variable "region" {
  type        = string
  description = "AWS Region"
  default     = null
}

variable "aws_account_id" {
  type        = string
  description = "AWS Account ID"
  default = "195275646721"
}

variable "environment" {
  type        = string
  description = "Name of the environment"
  default     = null
}

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
  default     = null
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default = null
}

variable "subnet_cidr_public" {
  description = "CIDR blocks for the public subnets"
  default = null
}

variable "subnet_cidr_private" {
  description = "CIDR blocks for the subnets"
  default = null
}

variable "subnet_cidr_infra" {
  description = "CIDR blocks for the infra subnets"
  default = null
}

variable "key_name" {
  description = "SSH key name."
  type        = string
  default = "assess"
}
