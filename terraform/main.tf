module "eks-demo" {
    source = "./modules/eks"

    cluster_name = var.cluster_name
    node_group_name = var.node_group_name
    eks_desired_size = var.eks_desired_size
    eks_max_size = var.eks_max_size
    eks_min_size = var.eks_min_size
    
}