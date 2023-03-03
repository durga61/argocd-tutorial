# argocd-tutorial
Play around with argocd with Kind

## create K8s cluster with configuration 
kind create cluster --config config-kind.yml

## ArgoCD setup on kind
cd setup

kubectl create namespace argocd
kubectl apply -n argocd -f argocd.yaml

## To connect ArgoCD web UI

port forward 80 on the host to 30950 (NodePort) on the kind node

## Passowrd to connect web UI

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
