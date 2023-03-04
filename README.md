# argocd-tutorial
Play around with argocd with Kind

## with kind configuration
### create K8s cluster with configuration 
kind create cluster --config config-kind.yml

### ArgoCD setup on kind configuration
cd setup

kubectl create namespace argocd
kubectl apply -n argocd -f argocd.yaml

### with port-forward
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
 To connect ArgoCD web UI
 
 port forward 8443  on the host to 443  on the kind node
 kubectl port-forward -n argocd service/argocd-server 8443:443



## Passowrd to connect web UI

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
