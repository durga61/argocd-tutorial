$ kubectl create deployment demo --image=nginx --dry-run -o=yaml > deployment.yaml
$ echo --- >> deployment.yaml
$ kubectl create service clusterip demo --tcp=80:80 --dry-run -o=yaml >> deployment.yaml