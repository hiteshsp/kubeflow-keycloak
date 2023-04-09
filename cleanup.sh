#!/bin/bash

#kubectl delete -f root-app.yaml
kubectl delete -f argocd-ha-install.yaml
kubectl delete ns argocd

terraform destroy -auto-approve