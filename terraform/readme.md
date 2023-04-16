# How to install argcd using helm provider via terraform

## configure helm provide and configure config file for auth

 - helm_release resource to install argocd , it take arguments  as 

 - Name of the release, repo , chart name , namespace,  version,   to install and values files to override any default values 

 - this helps to keep code as IAC 

 - terraform init and terraform apply

 - and port-fordward kubectl port-forward svc/argocd-server -n argocd 8080:80   

 ## Manage multiple apps and environments from single repo