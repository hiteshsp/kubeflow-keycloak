#
# Variables Configuration
#

variable "cluster_name" {
  default = "terraform-eks-demo"
  type    = string
}

variable "node_group_name" {
  type = string
  description = "AWS EKS Node Group Name"
  default = "demo"
}

variable "eks_min_size" {
    type = number
    description = "EKS Min Size"
}

variable "eks_max_size" {
    type = number
    description = "AWS EKS Max Size"
}

variable "eks_desired_size" {
    type = number
    description = "AWS EKS Desired Size"
}