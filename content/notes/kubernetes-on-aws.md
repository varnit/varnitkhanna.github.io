---
title: "Kubernetes on AWS"
date: "2018-03-28"
categories: 
  - "kubernetes"
---

Note this only works for k8s 1.5

1. **Launch AWS post instance cluster** `# make sure awscli is already setup export AWS_S3_REGION=us-east-1 export KUBERNETES_PROVIDER=aws export KUBE_AWS_INSTANCE_PREFIX=dev export KUBE_AWS_ZONE=us-east-1a export MASTER_SIZE=m3.large export NODE_SIZE=r3.2xlarge export NUM_NODES=1 export NODE_SPOT_PRICE=1.33  /path/to/kubernetes/cluster/kube-up.sh`
    
2. **Cluster info** `kubectl cluster-info`
    
3. **Get nodes** `kubctl get nodes`
    
4. **Create pod** `kubectl create -f component/service.yaml`
    
5. **Delete pod** `kubectl delete -f component/service.yaml`
    
6. **Shell into container** `kubectl exec -it container-name bash`
    
7. **Cluster settings** `kubectl config set-credentials admin/dev --username=admin --password=******** kubectl config set-cluster dev --insecure-skip-tls-verify=true --server=https://xx.xx.xx.xx kubectl config set-context dev/admin --user=admin/uat1 --namespace=default --cluster=dev kubectl config use-context dev/admin`
    
8. **Delete cluster** `/path/to/kubernetes/cluster/kube-down.sh`
