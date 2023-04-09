#!/bin/bash

cd terraform
terraform init -reconfigure -backend-config=backend.conf && terraform plan -var-file=demo.tfvars -out=eks.out
terraform apply -var-file=demo.tfvars -auto-approve

aws eks --region us-east-2 update-kubeconfig --name $(terraform output -raw cluster_name)
kubectl cluster-info
kubectl get nodes
cd ../
kubectl apply -f argocd-ns.yaml
kubectl apply -f argocd-ha-install.yaml