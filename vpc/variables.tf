variable "region" {
  type    = string
  default = "us-east-1"
}

variable "account_id" {
  type    = string
  default = "878174833450"
}

variable "profile" {
  type    = string
  default = "default"
}

variable "vpc_name" {
  type    = string
  default = "lab-vpc"
}

variable "cluster_name" {
  type    = string
  default = "eks-lab-smarzaro"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "priv_subnets" {
  description = "List of private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "pub_subnets" {
  description = "List of public subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "tags" {
  description = "Map of tags to apply to resources"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "hml"
    Project     = "lab-eks"
  }
}

