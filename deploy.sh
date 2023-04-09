#!/bin/bash

cd terraform
terraform init -reconfigure && terraform plan -out=eks.out
terraform apply -auto-approve

aws eks --region us-east-2 update-kubeconfig --name $(terraform output -raw cluster_name)
kubectl cluster-info
kubectl get nodes
cd ../
kubectl apply -f argocd-ns.yaml
kubectl apply -f argocd-ha-install.yaml
sleep 10
kubectl apply -f root-app.yaml